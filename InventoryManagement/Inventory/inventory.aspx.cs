
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using InventoryManagement.DAL;


public partial class inventory : System.Web.UI.Page
{

    clsProducts prod = new clsProducts();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rbSelector_CheckedChanged(object sender, System.EventArgs e)
    {
        //Clear the existing selected row 
        foreach (GridViewRow oldrow in gvDetails.Rows)
        {
            ((RadioButton)oldrow.FindControl("rbSelector")).Checked = false;
        }


        //Set the new selected row
        RadioButton rb = (RadioButton)sender;
        GridViewRow row = (GridViewRow)rb.NamingContainer;
        ((RadioButton)row.FindControl("rbSelector")).Checked = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        clsProducts prod = new clsProducts();
        
        DataSet ds = prod.SearchProduct(this.TextBox1.Text);
        this.gvDetails.DataSource = ds;
        this.gvDetails.DataBind();

        //string var1 = "<table><tr><th>Vendor</th><th>item</th><th>productNumber</th><th>availability</th></tr>";

        //for (int i = 0; i < ds.Tables[0].Rows.Count ; i++ )
        //{
        //    var1 += "<tr>"; var1 += "<td>" + ds.Tables[0].Rows[i]["SupplierName"] + "</td><td>" + ds.Tables[0].Rows[i]["ProductName"] + "</td><td>" + ds.Tables[0].Rows[i]["ProductNumber"] + "</td><td>" + ds.Tables[0].Rows[i]["AvailableQuantity"] + "</td><td>"; var1 += "</tr>";

        //}

        //var1 += "</table>";
        //bookurl.InnerHtml = var1;


    }



    //protected void Button2_Click(object sender, EventArgs e)
    //{
      //  Response.Redirect("Home Page.aspx");
    //}
    //protected void Button3_Click(object sender, EventArgs e)
    //{
      //  Response.Redirect("start.aspx");
    //}
    protected void gvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName=="btnPlaceOrder")
        {
            clsUserOrder ord = new clsUserOrder();
            GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            int RowIndex = row.RowIndex;
            int qty = Convert.ToInt32(((TextBox)row.FindControl("txtQty")).Text.ToString());
            bool productselected = ((RadioButton)row.FindControl("rbSelector")).Checked;
            if (productselected)
            {
                ord.PlaceOrder(Convert.ToInt32(e.CommandArgument), Convert.ToInt32(Session["UserID"]), 1, qty);

                Response.Redirect("frmManageUserOrders.aspx");
            }
        }
    }
}
