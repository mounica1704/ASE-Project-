using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using InventoryManagement.DAL;
using System.Web;

/// <summary>
/// Summary description for clsProducts
/// </summary>
public class clsProducts
{
	public clsProducts()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ProductID { get; set; }
    public string ProductName { get; set; }
    public string ProductDescription { get; set; }
    public Decimal Cost { get; set; }
    public int AvailableQuantity { get; set; }
    public int SupplierID { get; set; }
    public DataSet SearchProduct(string Auth)
    {
        SqlParameter p = new SqlParameter("@Auth", Auth);
        p.SqlDbType = SqlDbType.VarChar;
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spSearchProduct", p);
    }
    public void AddProduct(string productname, string productdesc, string productnumber, int availableqty,decimal productcost,int supplierid, Byte[] prdimage,string ImageExt)
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@ProductName", productname);
        p[0].SqlDbType = SqlDbType.VarChar;
        p[1] = new SqlParameter("@ProductDescription", productdesc);
        p[1].SqlDbType = SqlDbType.VarChar;
        p[2] = new SqlParameter("@ProductNumber", productnumber);
        p[2].SqlDbType = SqlDbType.VarChar;
        p[3] = new SqlParameter("@AvailableQty", availableqty);
        p[3].SqlDbType = SqlDbType.Int;
        p[4] = new SqlParameter("@ProductCost", productcost);
        p[4].SqlDbType = SqlDbType.Decimal;
        p[5] = new SqlParameter("@SupplierID", supplierid);
        p[5].SqlDbType = SqlDbType.Int;
        p[6] = new SqlParameter("@ProductImage", prdimage);
        p[6].SqlDbType = SqlDbType.VarBinary;
        p[7] = new SqlParameter("@ImageExt", ImageExt);
        p[7].SqlDbType = SqlDbType.VarChar;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spAddProduct", p);
      

    }
    public DataSet GetSupplierProducts(int SupplierID)
    {
        SqlParameter p = new SqlParameter("@SupplierID", SupplierID);
        p.SqlDbType = SqlDbType.Int;
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetSupplierProducts",p);
    }
    public DataSet GetProduct(int ProductID)
    {
        SqlParameter p = new SqlParameter("@ProductID", ProductID);
        p.SqlDbType = SqlDbType.Int;
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetSingleProduct", p);
    }

    public DataSet GetProducts()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetAllProducts");
    }
}