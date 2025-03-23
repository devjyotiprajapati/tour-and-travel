using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


public partial class BookBus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select max(Bookid) from Busbook";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid = Convert.ToInt32(dr[0]);
        cid++;
        TextBox4.Text = cid.ToString();

        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Date");
            for (int d= 1; d <= 31; d++)
            {
                DropDownList1.Items.Add(d.ToString());
            }
            DropDownList2.Items.Add("Month");
            for (int m = 1; m <= 12; m++)
            {
                DropDownList2.Items.Add(m.ToString());
            }
            DropDownList3.Items.Add("Year");
            for (int y = 2020; y <= 2050; y++)
            {
                DropDownList3.Items.Add(y.ToString());
            }
        }
    }

    protected void bt1_Click(object sender, EventArgs e)
    {
        try{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "insert into Busbook values(@t1,@t2,@t3,@t4,@t5,@t6,@t7)";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.Parameters.AddWithValue("@t1", TextBox4.Text);//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@t2", TextBox3.Text);
        cmd.Parameters.AddWithValue("@t3", TextBox1.Text);
        cmd.Parameters.AddWithValue("@t4", TextBox2.Text);
        String gen = null;
        if( rd1.Checked)
        {
            gen = "Male";
        }
        else
        {
            gen = "Female";
        }
        cmd.Parameters.AddWithValue("@t5", gen);
        String brt = null;
        if (RadioButton1.Checked)
        {
            brt = "Window";
        }
        else
        {
            brt= "Sliper";
        }
        cmd.Parameters.AddWithValue("@t6", brt);
        cmd.Parameters.AddWithValue("@t7", DropDownList1.Text+"/"+DropDownList2.Text+"/"+DropDownList3.Text);
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