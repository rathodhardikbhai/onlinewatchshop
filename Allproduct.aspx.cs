using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class USER_Allproduct : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["addproduct"] = "true";
        if (e.CommandName == "Addtocart")
        {
            DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter("select * from Product where (Pname like '%" + TextBox1.Text + "%')or(Pid like '%" + TextBox1.Text + "%')", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}