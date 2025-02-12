using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_Orderview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //GridView1.Visible = true;
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        //con.Open();
        //SqlDataAdapter da = new SqlDataAdapter("select * from Order where (Pname like '%" + TextBox1.Text + "%')or(Pid like '%" + TextBox1.Text + "%')", con);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //GridView1.DataSourceID = null;
        //GridView1.DataSource = dt;
        //GridView1.DataBind();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        //Response.Write("<script>alert('Show The User');</script>");
        //Response.Redirect("Orderview.aspx");
    }
}