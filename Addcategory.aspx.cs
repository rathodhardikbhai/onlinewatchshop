using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_Addcategory : System.Web.UI.Page
{
    string str = "Data Source=.,Initial Catalog=RecordDB;Integrated Security=True;";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowGrid();
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select * from Category where Catname='" + txtname.Text.ToString() + "'", con1);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Response.Write("<script>alert('This Category is Already Present');</script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Category (Catname) values (@Cname)", con);
            cmd.Parameters.AddWithValue("@Cname", txtname.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('One Record Added');</script>");
            txtname.Text = "";
            ShowGrid();
        }
    }
    public void ShowGrid()
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select * from Category", conn);

        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        ShowGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowGrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from Category where Catid=@1", con1);
        cmd1.Parameters.AddWithValue("@1", cId);
        cmd1.ExecuteNonQuery();
        con1.Close();
        Response.Write("<script>alert('Category Deleted Successful');</script>");
        ShowGrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ShowGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string Cat_name = (row.FindControl("TextBox1") as TextBox).Text;
        SqlConnection con2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        con2.Open();
        SqlCommand cmd1 = new SqlCommand("Update Category set Catname=@1 where Catid=@2", con2);
        cmd1.Parameters.AddWithValue("@1", Cat_name);
        cmd1.Parameters.AddWithValue("@2", cId);
        cmd1.ExecuteNonQuery();
        con2.Close();
        Response.Write("<script>alert('Category Update Successful');</script>");
        GridView1.EditIndex = -1;

    }
}