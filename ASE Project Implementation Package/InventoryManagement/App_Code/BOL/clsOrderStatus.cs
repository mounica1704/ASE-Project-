using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using InventoryManagement.DAL;
/// <summary>
/// Summary description for clsOrderStatus
/// </summary>
public class clsOrderStatus
{
    public clsOrderStatus()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int OrderStatusID { get; set; }
    public string OrderStatus { get; set; }
  
    public DataSet GetOrderStatus()
    {
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetOrderStatus");
        return ds;

    }
}