using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class SearchBusByNumber : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Label1.Visible = false;

    }
   
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select *from Bus where Busid=@12";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.Parameters.AddWithValue("@12", TextBox1.Text);//Passing Paramiters to the Query
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)//If data Meet in dr
        {
            dr.Read();
            Panel1.Visible = true;
            TextBox2.Text = dr["Busname"].ToString();
            TextBox3.Text = dr["Startstation"].ToString();
            TextBox4.Text = dr["Laststation"].ToString();
            TextBox5.Text = dr["Dayofruning"].ToString();

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Bus no not found";
        }
        }catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
}