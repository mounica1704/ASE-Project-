using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using InventoryManagement.DAL;
using System.Data;
/// <summary>
/// Summary description for clsAdminOrder
/// </summary>
public class clsAdminOrder
{
    public clsAdminOrder()
    {
        //
        // TODO: Add constructor logic here
        //

    }
    public int AdminOrderID { get; set; }
    public int AdminUserID { get; set; }
    public string OrderStatusID { get; set; }
    public string AdminOrderDate { get; set; }
    public DataSet GetOrders()
    {
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetAdminOrders");
        return ds;

    }
    public DataSet GetPayments(int orderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetPayments",p);
        return ds;

    }
    public DataSet GetProducts(int orderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetAdminOrderProducts", p);
        return ds;

    }
    public int PlaceOrder(int productid, int userid, int ordertype, int qty)
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
    public int UpdateOrderStatus(int orderid,int orderstatusid)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        p[1] = new SqlParameter("@OrderStatusID", orderstatusid);
        p[1].SqlDbType = SqlDbType.Int;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spUpdateAdminOrderStatus", p);
        return Convert.ToInt32(p[0].Value);

    }
}