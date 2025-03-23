using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class CancelTrainTicket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
        protected void bt1_Click(object sender, EventArgs e)
        {
            try{
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "delete from TrainBook where Trainbid=@12";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
             cmd.Parameters.AddWithValue("@12",TextBox1.Text);//Passing Paramiters to the Query
                // cmd.ExecuteNonQuery();//Executing SQL Query 
              int i = cmd.ExecuteNonQuery();//
              if (i == 1)
              {
                  Label3.Visible = true;
                  Label3.Text = " Delete SuccesFully";
              }
              else
              {
                  Label3.Visible = true;
                  Label3.Text = "Record not Found";
              }
            }
            catch (SqlException ex)//Exception  for catching error By using SqlException class
            {
                Response.Write(ex);
            }
         }

       
}