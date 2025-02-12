using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class ADMIN_Addquantity : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowGrid();
        }

        if (Page.IsPostBack == false)
        {
            DataTable dt = new DataTable();
            GridView1.DataSource =dt;
            GridView1.DataBind();

            DataTable st = new DataTable();
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "Pname";
            DropDownList2.DataValueField = "Pid";
            DropDownList2.DataBind();
        }
    }

    public void ShowGrid()
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        SqlDataAdapter da = new SqlDataAdapter("select * from Product", con);

        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        ITEMADAPTER.ITEMMST_ADDITEMQUANTITY(Convert.ToInt32(DropDownList2.SelectedValue), Convert.ToInt32(txtquan.Text));
        ITEMDATATABLE = ITEMADAPTER.ITEM_SELECT_BUYIID(Convert.ToInt32(DropDownList2.SelectedValue));
        Label1.Text = "YOUR QUANTITY IS UPDATED";
        ITEMDATATABLE = ITEMADAPTER.select();
        GridView1.DataSource = I;
        GridView1.DataBind();
        txtquan.Text = "";
    }
}