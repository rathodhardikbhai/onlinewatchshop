using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sign_Up : System.Web.UI.Page
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

        SqlCommand cmd = new SqlCommand("insert into Signup" + "(Fname,Lname,Contact,Email_id,Password,Cpassword,Gender,Address,Type)values(@fname,@lname,@contact,@email,@password,@cpassword,@gender,@address,@type)", con);
        cmd.Parameters.AddWithValue("@fname", txtFname.Text);
        cmd.Parameters.AddWithValue("@lname",txtLname.Text);
        cmd.Parameters.AddWithValue("@contact",txtContact.Text);
        cmd.Parameters.AddWithValue("@email",txtEmail.Text);
        cmd.Parameters.AddWithValue("@password",txtPassword.Text);
        cmd.Parameters.AddWithValue("@cpassword",txtConPassword.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@address",txtAddress.Text);
        cmd.Parameters.AddWithValue("@type",DropDownList2.SelectedItem.Value);
        cmd.ExecuteNonQuery();
        lblMsg.Text = "Succesful";
        Response.Redirect("Login.aspx");

    }
}