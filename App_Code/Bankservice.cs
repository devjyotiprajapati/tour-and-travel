using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


/// <summary>
/// Summary description for Bankservice
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Bankservice : System.Web.Services.WebService {

    public Bankservice () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public bool checkcard(int cno, string ct, int cv, string exp, int b)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select * from Bank where Cardno=@t1 and Cardtype=@t2 and Cvv=@t3 and Expirydate=@t4 and Balance>@t5"; // SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.Parameters.AddWithValue("@t1",cno);//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@t2",ct);
        cmd.Parameters.AddWithValue("@t3",cv);
        cmd.Parameters.AddWithValue("@t4",exp);
        cmd.Parameters.AddWithValue("@t5",b);

        SqlDataReader dr=cmd.ExecuteReader();//Executing SQL Query
        if(dr.HasRows)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
}
