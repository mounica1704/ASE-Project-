using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using InventoryManagement.DAL;
/// <summary>
/// Summary description for clsSupplier
/// </summary>
public class clsSupplier
{
	public clsSupplier()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int SupplierID { get; set; }
    public string SuplierName { get; set; }
    public string SupplierAddress { get; set; }
    public string SupplierCity { get; set; }
    public string SupplierState { get; set; }
    public string SupplierCountry { get; set; }
    public DataSet GetSuppliers()
    {
        DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spGetSuppliers");
        return ds;

    }
}