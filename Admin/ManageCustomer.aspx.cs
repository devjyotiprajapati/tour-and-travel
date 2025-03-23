using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Admin_ManageCustomer : System.Web.UI.Page
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
        try{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select *from customer ";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)//If data Meet in dr
        {
            GridView1.DataSource = dr;//GridView Will take data from dr
            GridView1.DataBind();//Binding the Grid fields with DB

        }
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try{
        //coding for delete button

        int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection
        string qry = "delete from customer where Custid=@12";//SQL Query
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
        try{
        // code for Update
        int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection
        
        string qry = "update Customer set Custname=@t1,Custadd=@t2,Custage=@t3,Custgender=@t4,Custusername=@t5,Custpassword=@t6,Custdob=@t7,Custemail=@t8,Custconfirmpassword=@t9,Custmobile=@t10 Where Custid=@t11";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        string  nm=((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string  ad=((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string  age=((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string  gen=((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string  usr=((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string  pas=((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string  dob=((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        string  em=((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        string  conf=((TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0]).Text;
        string  mob=((TextBox)GridView1.Rows[e.RowIndex].Cells[11].Controls[0]).Text;

         cmd.Parameters.AddWithValue("@t1",nm);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t2",ad);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t3",age);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t4",gen);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t5",usr);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t6", pas);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t7",dob);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t8",em);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t9",conf);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t10",mob);//Passing Paramiters to the Query
         cmd.Parameters.AddWithValue("@t11",cid);//Passing Paramiters to the Query

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