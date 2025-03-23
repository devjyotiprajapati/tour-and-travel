using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class AfterLogin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usr"] == null)
            Response.Redirect("UserLogin.aspx");
        else
        {
            Label1.Text = Session["usr"].ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //code for LogOut
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("UserLogin.aspx");
    }
}
