using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class USER_Login_user : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        con.Open();

        SqlDataAdapter da = new SqlDataAdapter("select * from Signup where Email_id='" + txtID.Text + "' and Password='" + txtPass.Text + "'", con);


        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            
            Session["Email_id"] = txtID.Text;
            Label3.Text = "Login Succesfull";
            Response.Redirect("Home.aspx");
            Label3.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Label3.Text = "Login Unsuccesfull";
            Label3.ForeColor = System.Drawing.Color.Red;
        }
    }
}