using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using InventoryManagement.DAL;
using System.Data;
/// <summary>
/// Summary description for clsOrder
/// </summary>
public class clsUserOrder
{
	public clsUserOrder()
	{
		//
		// TODO: Add constructor logic here
		//

	}
    public int OrderID { get; set; }
    public int UserID { get; set; }
    public string OrderStatusID { get; set; }
    public string UserOrderDate { get; set; }
    public DataSet GetOrders(int userid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserID", userid);
        p[0].SqlDbType = SqlDbType.Int;

        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetOrders",p);
        return ds;

    }
    public DataSet GetOrderCost(int orderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetOrderCostDetails",p);
        return ds;

    }
    public DataSet GetOrderStatus(int orderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetOrderStatusDetails", p);
        return ds;

    }
    public DataSet GetProducts(int orderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetProducts",p);
        return ds;

    }
    public int PlaceOrder(int productid,int userid,int orderstatusid,int qty )
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@ProductID", productid);
        p[0].SqlDbType = SqlDbType.Int;
        p[1] = new SqlParameter("@UserId", userid);
        p[1].SqlDbType = SqlDbType.Int;
        p[2] = new SqlParameter("@OrderStatusID", orderstatusid);
        p[2].SqlDbType = SqlDbType.Int;
        p[3] = new SqlParameter("@Quantity", qty);
        p[3].SqlDbType = SqlDbType.Int;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spAddOrder", p);
        return Convert.ToInt32(p[3].Value);

    }

    public void MakePayment(int orderid, int userid)
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        p[1] = new SqlParameter("@UserId", userid);
        p[1].SqlDbType = SqlDbType.Int;
        DataSet dsCost = GetOrderCost(orderid); 
        
        p[2] = new SqlParameter("@Cost", dsCost.Tables[0].Rows[0]["TotalCost"]);
        p[2].SqlDbType = SqlDbType.Int;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spAddOrderPayment", p);
        

    }
    public int UpdateOrderStatus(int orderid,int orderstatusid)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@OrderID", orderid);
        p[0].SqlDbType = SqlDbType.Int;
        p[1] = new SqlParameter("@OrderStatusID", orderstatusid);
        p[1].SqlDbType = SqlDbType.Int;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spUpdateOrderStatus", p);
        return Convert.ToInt32(p[0].Value);

    }
}