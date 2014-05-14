using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Inventory_frmMakeOrderPayment : System.Web.UI.Page
{
    clsUserOrder objOrders = new clsUserOrder();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
         
            if (!IsPostBack)
            {
             
                lblMsg.Text = "Thanks for the payment";
                lblMsg.Visible = true;
                GetOrderCost(Convert.ToInt32(Request.QueryString["OrderID"].ToString()));
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    public void GetOrderCost(int orderid )
    {
        DataSet dsOrderCost = objOrders.GetOrderCost(orderid);
        if (dsOrderCost.Tables[0].Rows.Count > 0)
        {
            gvOrderCost.DataSource = dsOrderCost.Tables[0];
            gvOrderCost.DataBind();
        }
    }
    protected void gvOrderCost_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "btnMakePayment")
        {
            string OrderID = e.CommandArgument.ToString();
            string UserID = Session["UserID"].ToString();
            clsUserOrder ord = new clsUserOrder();
            ord.MakePayment(Convert.ToInt32(OrderID), Convert.ToInt32(UserID) );

            DataSet dsproducts = ord.GetProducts(Convert.ToInt32(OrderID));
            
            string OrderStatusID = "1";
            string qty = "1";
            
            for (int i = 0; i < dsproducts.Tables[0].Rows.Count; i++)
            {
                ord.PlaceOrder(Convert.ToInt32(dsproducts.Tables[0].Rows[i]["ProductID"]), Convert.ToInt32(UserID), Convert.ToInt32(OrderStatusID), Convert.ToInt32(qty));
            }

        }
    }
}