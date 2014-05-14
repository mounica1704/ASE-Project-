using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using InventoryManagement;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
        }

        protected void LogIn(object sender, EventArgs e)
        {
            string userName = Request.Form["txtUsername"].ToString();
            string Password = Request.Form["txtPassword"].ToString();
            DataSet ds = new DataSet();


            SqlConnection conn = new SqlConnection(clsConnection.ConnectionString());
            conn.Open();
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            SqlParameter un = new SqlParameter("@username",userName);
            Cmd.Parameters.Add(un);
            SqlParameter pass = new SqlParameter("@password", Password);
            Cmd.Parameters.Add(pass);
            Cmd.CommandText = "SELECT * FROM UserLogin where UserName = @username and Password = @password";
            SqlDataAdapter Da = new SqlDataAdapter(Cmd);
            Da.Fill(ds);

            if(ds.Tables[0].Rows.Count > 0)
            {
                Session.Add("LoginType", "UserLogin");
                Session["UserID"] = ds.Tables[0].Rows[0]["UserID"].ToString();
                Session["UserName"] = ds.Tables[0].Rows[0]["UserName"].ToString();
                Session["RoleID"] = "User";
               // Session.Timeout = 20;
                Response.Redirect("/Inventory/frmManageUserOrdersMenu.aspx");
            }
                else
            {
                var label = Page.FindControl("LoginFailure");
                label.Visible = true;
            }

            conn.Close();
        //    if (IsValid)
        //    {
        //        // Validate the user password
        //        var manager = new UserManager();
        //        ApplicationUser user = manager.Find(UserName.Text, Password.Text);
        //        if (user != null)
        //        {
        //            IdentityHelper.SignIn(manager, user, RememberMe.Checked);
        //            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //        }
        //        else
        //        {
        //            FailureText.Text = "Invalid username or password.";
        //            ErrorMessage.Visible = true;
        //        }
        //    }
        }
}