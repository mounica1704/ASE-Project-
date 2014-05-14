using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using InventoryManagement.DAL;
public partial class Inventory_ImageCSharp : System.Web.UI.Page
{
    clsProducts prd = new clsProducts();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ImageID"] != null)
        {
            DataTable dt = new DataTable();
            try
            {
                dt= (DataTable) prd.GetProduct(Convert.ToInt32(Request.QueryString["ImageID"].ToString())).Tables[0];
            }
            catch
            {
                dt = null;
            }
            finally
            {
            }
            if (dt != null)
            {
                Byte[] bytes = (Byte[])dt.Rows[0]["ProductImage"];
                Response.Buffer = true;
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
               // Response.ContentType = dt.Rows[0]["ContentType"].ToString();
                Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["ProductName"].ToString());
                Response.BinaryWrite(bytes);
                Response.Flush();
                Response.End();
            }
        }
    }
   
}
