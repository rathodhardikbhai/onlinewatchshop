 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class placeorder : System.Web.UI.Page
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

        SqlCommand cmd = new SqlCommand("Insert into Payment" + "(Fname,Lname,Cardno,Edate,Cvv,Address)values(@Fname,@Lname,@Cardno,@Edate,@Cvv,@Address)", con);
        cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Cardno", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Edate", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Cvv", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox6.Text);
        cmd.ExecuteNonQuery();
        Response.Write("Payment Mode Successfull");
        Session["address"] = TextBox6.Text;
        Response.Redirect("Pdf.aspx");

    }
}