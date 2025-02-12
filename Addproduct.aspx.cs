using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_Addproduct : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        /*if (!IsPostBack)
        {
            if (Session["admin"] == null) 
            {
                 Response.Redirect("~/USER/Login1.aspx");
            }
        }*/
    }
    protected void btnAddproduct_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        if (imageUpload.HasFile)
        {
            string filename = imageUpload.PostedFile.FileName;
            string filepath = "~/image/" + imageUpload.FileName;
            imageUpload.PostedFile.SaveAs(Server.MapPath("~/image/") + filename);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Product values('" + txtPname.Text + "','" + txtPdec.Text + "','" + txtPprice.Text + "','" + txtPquantity.Text + "','" + DropDownList1.SelectedItem.Text + "','" + filepath + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Prodect Added Successfully');</script>");
            Response.Redirect("Addproduct.aspx");
            
        }
    }

    //public void ShowGrid()
    //{
    //    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
    //    SqlDataAdapter sda = new SqlDataAdapter("select * from Product", conn);

    //    DataTable dt = new DataTable();
    //    sda.Fill(dt);
    //    GridView1.DataSource = dt;
    //    //GridView1.DataBind();
    //}
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from Product where Pid=@1", con1);
        cmd1.Parameters.AddWithValue("@1", cId);
        cmd1.ExecuteNonQuery();
        con1.Close();
        Response.Write("<script>alert('Product Deleted Successful');</script>");
        //ShowGrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        //ShowGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string pname = (row.FindControl("txtPname") as TextBox).Text;
        SqlConnection con2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        con2.Open();
        SqlCommand cmd1 = new SqlCommand("Update Product set Pname=@1 where Pid=@2", con2);
        cmd1.Parameters.AddWithValue("@1",pname);
        cmd1.Parameters.AddWithValue("@2", cId);
        cmd1.ExecuteNonQuery();
        con2.Close();
        Response.Write("<script>alert('Product Update Successful');</script>");
        GridView1.EditIndex = -1;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        //ShowGrid();
    }
}