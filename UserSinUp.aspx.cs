using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


public partial class UserSinUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select max(Custid) from Customer";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid= Convert.ToInt32(dr[0]);
        cid++;
        TextBox9.Text = cid.ToString();

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "insert into Customer values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9,@t10,@t11)";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            cmd.Parameters.AddWithValue("@t1", TextBox9.Text);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
            cmd.Parameters.AddWithValue("@t3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@t4", TextBox2.Text);

            String gen = null;
            if (RadioButton1.Checked)
            {
                gen = "Male";
            }
            else
            {
                gen = "Female";
            }
            cmd.Parameters.AddWithValue("@t5", gen);
            cmd.Parameters.AddWithValue("@t6", TextBox10.Text);
            cmd.Parameters.AddWithValue("@t7", TextBox4.Text);
            cmd.Parameters.AddWithValue("@t8", TextBox8.Text);
            cmd.Parameters.AddWithValue("@t9", TextBox7.Text);
            cmd.Parameters.AddWithValue("@t10", TextBox5.Text);
            cmd.Parameters.AddWithValue("@t11", TextBox6.Text);
            int i = cmd.ExecuteNonQuery();//
            if (i == 1)
            {
                Label10.Visible = true;
                Label10.Text = "Record Saved SuccesFully";
            }
            con.Close();//close DB Connection;
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        TextBox9.Text = "";
        TextBox8.Text = "";
        TextBox7.Text = ""; 
        TextBox6.Text = ""; 
        TextBox5.Text = ""; 
        TextBox4.Text = ""; 
        TextBox3.Text = ""; 
        TextBox2.Text = "";
        TextBox1.Text = "";
        TextBox10.Text = "";
        

    }
}