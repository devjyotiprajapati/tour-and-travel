using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class BookPackage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select max(BookingId) from PackageBook";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid = Convert.ToInt32(dr[0]);
        cid++;
        TextBox4.Text = cid.ToString();

    }
    protected void bt1_Click(object sender, EventArgs e)
    {
        try{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "insert into PackageBook values(@t1,@t2,@t3,@t4)";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.Parameters.AddWithValue("@t1", TextBox4.Text);//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
        cmd.Parameters.AddWithValue("@t3", TextBox2.Text);
        cmd.Parameters.AddWithValue("@t4", TextBox3.Text);
        int i = cmd.ExecuteNonQuery();//
        if (i == 1)
        {
            Label5.Visible = true;
            Label5.Text = "Record Saved SuccesFully";
        }
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
}