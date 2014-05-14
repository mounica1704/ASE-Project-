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
/// <summary>
/// Summary description for clsUserLogin
/// </summary>
public class clsUserLogin
{
	public clsUserLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string userName,password,newPassword;
    int roleId;
    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    public int RoleId
    {
        get { return roleId; }
        set { roleId = value; }
    }
    public string NewPassword
    {
        get { return newPassword; }
        set { newPassword = value; }
    }
    public int CheckPassword()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@UserName", UserName);
        p[0].SqlDbType = SqlDbType.VarChar;
        p[1] = new SqlParameter("@Password", Password);
        p[1].SqlDbType = SqlDbType.VarChar;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spLoginChecking", p);
        return Convert.ToInt32(p[2].Value);
       
    }
    public int CheckChangePassword()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@UserName", UserName);
        p[0].SqlDbType = SqlDbType.VarChar;
        p[1] = new SqlParameter("@OldPassword", Password);
        p[1].SqlDbType = SqlDbType.VarChar;
        p[2] = new SqlParameter("@NewPassword", NewPassword);
        p[2].SqlDbType = SqlDbType.VarChar;
        p[3] = new SqlParameter("@Result", SqlDbType.Int);
        p[3].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString(), CommandType.StoredProcedure, "spCheckPassword", p);
        return Convert.ToInt32(p[3].Value);
        
    }
    public DataSet GetUserAccountId()
    {
        string SqlStat = "select UserId from UserLoginDetails where UserName='"+UserName +"'";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString(), CommandType.Text, SqlStat);
    }
}
