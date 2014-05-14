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

public partial class OperationAdmin_frmEditProfile : System.Web.UI.Page
{
    clsUserDetails objUser = new clsUserDetails();
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (!IsPostBack)
            {
                GetUserAccount();
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    public void GetUserAccount()
    {
        objUser.UserName = Session["UserName"].ToString();
        DataSet dsUser = objUser.GetUserAccount();
        if (dsUser.Tables[0].Rows.Count > 0)
        {
            DataRow dr = dsUser.Tables[0].Rows[0];
            txtUserId.Text = dr[0].ToString();
            txtFName.Text = dr[1].ToString();
            txtQualification.Text = dr[4].ToString();
            txtDesignation.Text = dr[5].ToString();
            txtAddress.Text = dr[6].ToString();
            txtEmail.Text = dr[7].ToString();
            txtContactNo.Text = dr[8].ToString();

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {

            UpdateUserAccount();
            Page.RegisterClientScriptBlock("Inventory", "<script>alert('Account Updated')</script>");
            btnClear_Click(sender, e);
            Response.Redirect("/Inventory/frmManageUserOrdersMenu.aspx");
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserId.Text = "";
        txtFName.Text = "";
        txtQualification.Text = "";
        txtDesignation.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtContactNo.Text = "";

    }
    public void UpdateUserAccount()
    {
        objUser.UserId = Convert.ToInt32(txtUserId.Text);
        objUser.FirstName = txtFName.Text;
        objUser.Qualification = txtQualification.Text;
        objUser.Address = txtAddress.Text;
        objUser.Designation = txtDesignation.Text;
        objUser.EmailId = txtEmail.Text;
        objUser.ContactNo = txtContactNo.Text;
        objUser.UpdateUserAccount();

    }
}
