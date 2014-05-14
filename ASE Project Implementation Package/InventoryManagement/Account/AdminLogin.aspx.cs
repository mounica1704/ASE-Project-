using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void AdminLogIn(object sender, EventArgs e)
    {
        string userName = Request.Form["txtUsername"].ToString();
        string Password = Request.Form["txtPassword"].ToString();
        DataSet ds = new DataSet();
        SqlConnection conn = new SqlConnection(clsConnection.ConnectionString());
        conn.Open();
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        SqlParameter un = new SqlParameter("@username", userName);
        Cmd.Parameters.Add(un);
        SqlParameter pass = new SqlParameter("@password", Password);
        Cmd.Parameters.Add(pass);
        Cmd.CommandText = "SELECT * FROM AdminLogin where UserName = @username and Password = @password";
        SqlDataAdapter Da = new SqlDataAdapter(Cmd);
        Da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["UserID"] = ds.Tables[0].Rows[0]["UserID"].ToString();
            Session["UserName"] = ds.Tables[0].Rows[0]["UserName"].ToString();
            Session["RoleID"] = "Admin";
            Session.Add("LoginType", "AdminLogin");
            Response.Redirect("/Inventory/frmManageAdminOrdersMenu.aspx");
      
        }
        else
        {
            var label = Page.FindControl("LoginFailure");
            label.Visible = true;
        }

        conn.Close();
    }
}