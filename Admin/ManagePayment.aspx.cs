using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Admin_ManagePayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            connect();
        }
    }
    public void connect()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select *from Payment ";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)//If data Meet in dr
        {
            GridView1.DataSource = dr;//GridView Will take data from dr
            GridView1.DataBind();//Binding the Grid fields with DB

        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //coding for delete button
        try{
        int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection
        string qry = "delete from Payment where Payid=@12";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.Parameters.AddWithValue("@12", cid);//Passing Paramiters to the Query
        cmd.ExecuteNonQuery();//Executing SQL Query
        Label1.Visible = true;
        Label1.Text = "Your Data Has been Deleted";
       
        GridView1.EditIndex = -1;//Nuteral the Index Position
        connect();
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;// Edit hoga Jis row par 'e' event par clik hoga
        connect();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        // code for Update
        try{
        int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "update Payment set  Bankname=@t1,Cardtype=@t2,Balance=@t3 where Payid=@t4";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        string nm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string ad = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string co = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
       

        cmd.Parameters.AddWithValue("@t1", nm);//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@t2", ad);//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@t3", co);//Passing Paramiters to the Query
        cmd.Parameters.AddWithValue("@t4", cid);//Passing Paramiters to the Query
        cmd.ExecuteNonQuery();//Execute SQL Query
        Label1.Visible = true;
        Label1.Text = "Your Data Has been UpDated";
        con.Close();
        GridView1.EditIndex = -1;//Nuteral the Index Position
        connect();
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        connect();
    }
}