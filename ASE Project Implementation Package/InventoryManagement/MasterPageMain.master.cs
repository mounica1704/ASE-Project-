using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageMain : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected override void OnLoad(EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
        Response.AppendHeader("Pragma", "no-cache");
        /*Just an example, make sure this condition is updated to check if user is logged out*/
        if (!IsPostBack)
        {
            if (Session["UserID"] == null)
            {
                Session.Abandon();
                Response.Redirect("/Account/login.aspx");
            }
        }
    }
}
