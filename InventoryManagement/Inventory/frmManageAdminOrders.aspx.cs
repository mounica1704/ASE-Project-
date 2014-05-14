using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_frmManageAdminOrders : System.Web.UI.Page
{
    clsAdminOrder objOrders = new clsAdminOrder();
    clsOrderStatus os = new clsOrderStatus();
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
           
           
            if (!IsPostBack)
            {
                GetOrders(); 
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;   
        }
    }
    public void GetOrders()
    {
        DataSet dsOrders = objOrders.GetOrders();
        if (dsOrders.Tables[0].Rows.Count > 0)
        {
            GVManageOrders.DataSource = dsOrders.Tables[0];
            GVManageOrders.DataBind();  
        }
    }
    protected void GVManageOrders_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            GVManageOrders.EditIndex = e.NewEditIndex;
            GetOrders();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;   
        }
    }
    protected void GVManageOrders_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {
            GVManageOrders.EditIndex = -1 ;
            GetOrders();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    protected void GVManageOrders_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            DropDownList ddlStatus;
            int orderid = Convert.ToInt32(GVManageOrders.Rows[e.RowIndex].Cells[1].Text.ToString());

            ddlStatus = (DropDownList)GVManageOrders.Rows[e.RowIndex].FindControl("ddlStatus");
            objOrders.OrderStatusID = ddlStatus.SelectedValue;
            objOrders.UpdateOrderStatus(orderid, Convert.ToInt32(objOrders.OrderStatusID));
            GVManageOrders.EditIndex = -1;   
            GetOrders(); 
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }

    protected void GVManageOrders_RowCommand(object sender, GridViewCommandEventArgs e)
    {
     
    }
    protected void GVManageOrders_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {


            ////Find the DropDownList in the Row
            DropDownList ddlStatus = (DropDownList)(e.Row.FindControl("ddlStatus"));

            ddlStatus.DataSource = os.GetOrderStatus();
            ddlStatus.DataTextField = "OrderStatus";
            ddlStatus.DataValueField = "OrderStatusID";
            ddlStatus.DataBind();
            DataRowView rowView = (DataRowView)e.Row.DataItem;


            // This gets the current value of the DDL
            string tempOrderStatus = rowView["OrderStatus"].ToString();


            string tempUserOrderID = rowView["UserOrderID"].ToString();
            string tempOrderID = rowView["AdminOrderID"].ToString();

            ddlStatus.SelectedIndex = ddlStatus.Items.IndexOf(ddlStatus.Items.FindByText(tempOrderStatus));





            GridView gvPayments = (GridView)(e.Row.FindControl("gvPayments"));

            gvPayments.DataSource = objOrders.GetPayments(Convert.ToInt32(tempUserOrderID));
            gvPayments.DataBind();

            

           

            GridView gvProducts = (GridView)(e.Row.FindControl("gvProducts"));

            gvProducts.DataSource = objOrders.GetProducts(Convert.ToInt32(tempOrderID));
            gvProducts.DataBind();
        }
    }
}
