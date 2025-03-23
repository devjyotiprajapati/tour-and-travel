using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        // code for change password 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select *from Customer where Custname=@12 and Custpassword=@21";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution

        cmd.Parameters.AddWithValue("@12", Session["usr"].ToString());//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@21", TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();//Execute SQL Query
        if (dr.Read())//If Record Matched
        {
            Panel2.Visible = true;
        }
        else//If Unmatched
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Password";
        }
        dr.Close();
        con.Close();
        
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        // change password
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "update customer set   Custpassword=@12 where custname=@21";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution

        cmd.Parameters.AddWithValue("@12",TextBox2.Text );//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@21", Session["usr"].ToString());
         cmd.ExecuteNonQuery();//Execute SQL Query
         Label1.Visible = true;
         Label1.Text = "Your Password Has been changed";
         con.Close();
        
        
    }
}