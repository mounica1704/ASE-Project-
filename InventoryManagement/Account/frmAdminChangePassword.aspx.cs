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

public partial class OperationAdmin_frmChangePassword : System.Web.UI.Page
{
    clsAdminLogin objLogin = new clsAdminLogin();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUserName.Text = Session["UserName"].ToString();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            CheckPassword();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }
    }
    public void CheckPassword()
    {
        objLogin.UserName = txtUserName.Text.Trim();
        objLogin.Password = txtPassword.Text.Trim();
        objLogin.NewPassword = txtNewPassword.Text.Trim();
        int check = objLogin.CheckChangePassword();
        if (check == 1)
        {
            Page.RegisterClientScriptBlock("Inventory", "<script>alert('Your Password Changed')</script>");
        }
        else if (check == 2)
        {
            Page.RegisterClientScriptBlock("Inventory", "<script>alert('Old & New Password Should be different')</script>");
        }
        else if (check == 3)
        {
            Page.RegisterClientScriptBlock("Inventory", "<script>alert('Enter Correct Old Password')</script>");
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {


        txtPassword.Text = "";
        txtNewPassword.Text = "";
        txtConfirmPassword.Text = "";


    }

}
