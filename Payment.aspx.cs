using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class BusPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.Items.Add("mm");
            for (int m = 1; m <= 12; m++)
            {
                DropDownList2.Items.Add(m.ToString());
            }
            DropDownList3.Items.Add("yyyy");
            for (int y = 2020; y <= 2050; y++)
            {
                DropDownList3.Items.Add(y.ToString());
            }
        }
        Label1.Text = System.DateTime.Now.ToShortDateString();// Insert date and time Automatically

        //Database conection

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        // Insert Payment Id Automatically
        string qry = "select max (Payid) from Payment ";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();//Read Selct data SQL Query
        dr.Read();
        int pid = Convert.ToInt32(dr[0]);
        pid++;
        TextBox5.Text = pid.ToString();

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try{
        int b = Convert.ToInt32(TextBox1.Text);
        string ct = DropDownList1.Text;
        int cno = Convert.ToInt32(TextBox3.Text);
        int cv = Convert.ToInt32(TextBox4.Text);
        string exp = DropDownList2.Text+"/"+DropDownList3.Text;
        Bankservice bs = new Bankservice();
       bool res= bs.checkcard(cno, ct, cv, exp, b);
       if (res == false)
       {
           Label2.Visible = true;
           Label2.Text = "Invalid Card Details";
       }
       else
       {
           //insert into Payment Table

           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
           con.Open();//open DB connection
           
           string qry = "insert into Payment values(@t1,@t2,@t3,@t4)";//SQL Query
           SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
           cmd.Parameters.AddWithValue("@t1", TextBox5.Text);//Passing Paramiters to the Query
           cmd.Parameters.AddWithValue("@t2", DropDownList4.Text);
           cmd.Parameters.AddWithValue("@t3", DropDownList1.Text);
           cmd.Parameters.AddWithValue("@t4", TextBox1.Text);
          
           int i = cmd.ExecuteNonQuery();//
           if (i == 1)
           {
               Label3.Visible = true;
               Label3.Text = "Paid SuccesFully";
           }                  
       }
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
}