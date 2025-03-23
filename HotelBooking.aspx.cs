using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class HotelBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int d, m, y;
            for (d = 1; d <= 31; d++)
            {
                DropDownList1.Items.Add(d.ToString());
            }
            for (m = 1; m <= 12; m++)
            {
                DropDownList2.Items.Add(m.ToString());
            }
            for (y = 2020; y <= 2030; y++)
            {
                DropDownList3.Items.Add(y.ToString());
            }
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select max(Bookid) from Hotelbook";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid = Convert.ToInt32(dr[0]);
        cid++;
        TextBox6.Text = cid.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "insert into Hotelbook values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9)";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.Parameters.AddWithValue("@t1", TextBox6.Text);//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
        cmd.Parameters.AddWithValue("@t3", TextBox2.Text);
        cmd.Parameters.AddWithValue("@t4", TextBox5.Text);
        cmd.Parameters.AddWithValue("@t5", TextBox3.Text);
        cmd.Parameters.AddWithValue("@t6", TextBox4.Text);
        cmd.Parameters.AddWithValue("@t7", DropDownList1.Text+"/"+DropDownList2.Text+"/"+DropDownList3);
        String gen = null;
        if( RadioButton1.Checked)
        {
            gen = "Male";
        }
        else
        {
            gen = "Female";
        }
        cmd.Parameters.AddWithValue("@t8", gen);        
        cmd.Parameters.AddWithValue("@t9", DropDownList4.Text);
        int i = cmd.ExecuteNonQuery();//
        if (i == 1)
        {
            Label9.Visible = true;
            Label9.Text = "Record Saved SuccesFully";
        }
       
      

    }
    
}