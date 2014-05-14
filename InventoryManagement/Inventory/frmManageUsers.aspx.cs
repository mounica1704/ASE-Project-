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

public partial class Admin_frmManageUsers : System.Web.UI.Page
{
    clsUserDetails objUser = new clsUserDetails(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                DisplayUsers(); 
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;  
        }
    }
    public void DisplayUsers()
    {
        DataSet dsUser = objUser.DisplayUsers();
        if (dsUser.Tables[0].Rows.Count > 0)
        {
            GVManageUsers.DataSource = dsUser.Tables[0];
            GVManageUsers.DataBind();  
        }
    }
    protected void GVManageUsers_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            int a = Convert.ToInt32(GVManageUsers.Rows[e.NewEditIndex].Cells[1].Text);
            Response.Redirect("~/frmUpdateUsers.aspx?userId="+a);  
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    protected void GVManageUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GVManageUsers.PageIndex = e.NewPageIndex;
        DisplayUsers();
    }
    protected void GVManageUsers_Sorting(object sender, GridViewSortEventArgs e)
    {
        objUser.FirstName = e.SortExpression.ToString();
        DataSet dsSorting=objUser.SortUserDetails();
        if (dsSorting.Tables[0].Rows.Count > 0)
        {
            GVManageUsers.DataSource = dsSorting.Tables[0];
            GVManageUsers.DataBind();
        }
        

    }
    protected void GVManageUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int a = Convert.ToInt32(GVManageUsers.Rows[e.RowIndex].Cells[1].Text);
            objUser.UserId = a;
            objUser.DeleteUsers();
            DisplayUsers();

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
}
