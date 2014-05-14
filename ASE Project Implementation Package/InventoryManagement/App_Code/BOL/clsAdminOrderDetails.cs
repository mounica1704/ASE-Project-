using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using InventoryManagement.DAL;
using System.Data;
/// <summary>
/// Summary description for clsAdminOrderDetails
/// </summary>
public class clsAdminOrderDetails
{
    public clsAdminOrderDetails()
	{
		//
		// TODO: Add constructor logic here
		//

	}
    public int AdminOrderDetailID { get; set; }
    public int AdminOrderID { get; set; }
    public int AdminUserID { get; set; }
    public int ProductID { get; set; }
    public string Quantity { get; set; }
    public DataSet GetOrders()
    {
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetOrders");
        return ds;

    }
    public int PlaceOrder(int productid,int userid,int ordertype,int qty )
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@ProductID", productid);
        p[0].SqlDbType = SqlDbType.Int;
        p[1] = new SqlParameter("@UserId", userid);
        p[1].SqlDbType = SqlDbType.Int;
        p[2] = new SqlParameter("@OrderType", ordertype);
        p[2].SqlDbType = SqlDbType.Int;
        p[3] = new SqlParameter("@Quantity", qty);
        p[3].SqlDbType = SqlDbType.Int;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spAddOrder", p);
        return Convert.ToInt32(p[3].Value);

    }
    public int UpdateOrderStatus(int orderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spUpdateOrderStatus", p);
        return Convert.ToInt32(p[0].Value);

    }
}