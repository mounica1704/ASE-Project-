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

public partial class frmRegistration : System.Web.UI.Page
{
    clsUserDetails objUserDetails = new clsUserDetails(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFName.Focus();  
    }
    public void InsertUserDetails()
    {
        if (txtUserName.Text.Length != 0)
        {
            objUserDetails.FirstName = txtFName.Text.Trim();
            objUserDetails.LastName = txtLName.Text.Trim();
            objUserDetails.Gender = rblGender.SelectedItem.Text;
            objUserDetails.Qualification = txtQualification.Text.Trim();
            objUserDetails.DateOfJoin = DateTime.Now.ToShortDateString();
            objUserDetails.Designation = txtDesignation.Text.Trim();
            objUserDetails.Address = txtAddress.Text;
            objUserDetails.EmailId = txtEmail.Text;
            objUserDetails.ContactNo = txtContactNo.Text;
            objUserDetails.UserName = txtUserName.Text.Trim();
            objUserDetails.PassWord = txtPassword.Text.Trim();
            objUserDetails.HintQuestion = ddlquestion.SelectedItem.Text;
            objUserDetails.Answer = txtAnswer.Text;
            objUserDetails.InserUserDetails();
        }
        else 
        {
            Page.RegisterClientScriptBlock("Inventory", "<script>alert('Enter UserName First!!')</script>");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            CheckAvailableUserName(); 
            InsertUserDetails();
            Response.Redirect("~/Account/frmRegisterSuccess.aspx");   
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        
        }
    }
    public void CheckAvailableUserName()
    {
        if (txtUserName.Text.Length != 0)
        {
            objUserDetails.UserName = txtUserName.Text.Trim();
            bool found;

            found = objUserDetails.CheckAvailableUserName();
            if (found == true)
            {
                Page.RegisterClientScriptBlock("Inventory", "<script>alert('UserExists/TryAnother!')</script>");
                txtUserName.Text = "";
                txtUserName.Focus();  
            }
            else 
            {
                Page.RegisterClientScriptBlock("Inventory", "<script>alert('UserName Available')</script>");
                txtPassword.Focus();   

            }
            
           
        }
        else
        {
            Page.RegisterClientScriptBlock("Inventory", "<script>alert('Enter UserName First!!')</script>");

        }
        
    }
    protected void lbCheck_Click(object sender, EventArgs e)
    {
        try
        {
            CheckAvailableUserName(); 
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;

        }

    }
    public void Clear()
    {
        lblMsg.Text = "";  
        txtFName.Text = "";
        txtLName.Text = "";
        txtQualification.Text = "";
        txtDesignation.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = ""; ;
        txtContactNo.Text = ""; ;
        txtUserName.Text = "";
        txtPassword.Text = ""; ;
        ddlquestion.SelectedIndex = 0;
        txtAnswer.Text = ""; ;
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        try
        {
          
            Clear();
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;

        }
    }
}
