using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class SearchPacakge : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          try
        {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select *from   Packages where Packageid=@12";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.Parameters.AddWithValue("@12", TextBox1.Text);//Passing Paramiters to the Query
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)//If data Meet in dr
        {
            dr.Read();
            Panel1.Visible = true;
            TextBox2.Text = dr["Packagename"].ToString();
            TextBox3.Text = dr["Validity"].ToString();
            TextBox4.Text = dr["Discount"].ToString();
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Package ID no not found";
        }
        }catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
  }
