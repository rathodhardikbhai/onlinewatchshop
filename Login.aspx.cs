using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
        SqlDataAdapter sda=new SqlDataAdapter("select * from Signup where Email_id='" + txtID.Text + "' and Password='" + txtPass.Text + "'", con);

        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (txtID.Text == "Admin123@gmail.com" & txtPass.Text == "admin")
        {
            Session["admin"] = txtID.Text;
            Response.Redirect("ADMINHOME.aspx");
        }
        else if (dt.Rows.Count == 1)
        {
            Session["Email_id"] = txtPass.Text;
            Response.Redirect("~/USER/Home.aspx");
        }
        else
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Login Failed...";
        }


    }
}