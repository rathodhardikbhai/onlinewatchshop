using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserMaster_Page : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email_id"] != null)
        {
            Label5.Text = " " + Session["Email_id"].ToString();
            Session["Email_id"] = Label5.Text;
            HyperLink1.Visible = false;
            Button1.Visible = true;
        }
        else
        {
            Label5.Text = "Hello you can Login Here...";
            HyperLink1.Visible = true;
            Button1.Visible = false;
        }

        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {
            Label4.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label4.Text = "0";
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
        Label5.Text = "You have Logged out Succrccfully..";
    }
}
