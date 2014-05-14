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

public partial class Admin_frmManageDefects : System.Web.UI.Page
{
    clsProducts objProducts = new clsProducts();
    clsSupplier objSupplier = new clsSupplier(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!IsPostBack)
            {

                GetSuppliers(); 
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;   
        }
    }
    public void GetSuppliers()
    {
        DataSet dsSuppliers = objSupplier.GetSuppliers();
        if (dsSuppliers.Tables[0].Rows.Count > 0)
        {
            GVManageSuppliers.DataSource = dsSuppliers.Tables[0];
            GVManageSuppliers.DataBind();  
        }
    }
    protected void GVManageSuppliers_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            GVManageSuppliers.EditIndex = e.NewEditIndex;
            GetSuppliers();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;   
        }
    }
    protected void GVManageSuppliers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {
            GVManageSuppliers.EditIndex = -1 ;
            GetSuppliers();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    protected void GVManageSuppliers_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            
            int supplierid = Convert.ToInt32(GVManageSuppliers.Rows[e.RowIndex].Cells[0].Text.ToString());
            int a = Convert.ToInt32(GVManageSuppliers.Rows[e.RowIndex].Cells[1].Text.ToString());
            //objSuppliers.UpdateSupplier(supplierid);
            GVManageSuppliers.EditIndex = -1;   
            GetSuppliers(); 
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }

    protected void GVManageSuppliers_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            DataRowView rowView = (DataRowView)e.Row.DataItem;

            string tempSupplierID = rowView["SupplierID"].ToString();

            GridView gvProducts = (GridView)(e.Row.FindControl("gvProducts"));

            gvProducts.DataSource = objProducts.GetSupplierProducts(Convert.ToInt32(tempSupplierID));
            gvProducts.DataBind();


        }
    }
    protected void GVProducts_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    protected void GVProducts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    protected void GVProducts_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }

    protected void GVProducts_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {


        }
    }
}
