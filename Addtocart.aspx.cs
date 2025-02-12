using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Addtocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["buyitems"] == null)
            {
                Button1.Enabled = false;
            }
            else
            {
                Button1.Enabled = true;
            }

            Session["addproduct"] = "false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("Sno");
            dt.Columns.Add("Pid");
            dt.Columns.Add("Pname");
            dt.Columns.Add("Price");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Photo");
            dt.Columns.Add("Totalprice");

            if (Request.QueryString["id"] != null)
            {
                if (Session["buyitems"] == null)
                {
                    dr = dt.NewRow();
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("select * from Product where Pid=" + Request.QueryString["id"], con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["Sno"] = 1;
                    dr["Pid"] = ds.Tables[0].Rows[0]["Pid"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    dr["Quantity"] = Request.QueryString["Quantity"];
                    dr["Photo"] = ds.Tables[0].Rows[0]["Photo"].ToString();

                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["Totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button1.Enabled = true;

                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Addtocart.aspx");
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("select * from Product where Pid=" + Request.QueryString["id"], con);

                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    dr["Sno"] = sr + 1;
                    dr["Pid"] = ds.Tables[0].Rows[0]["Pid"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                    dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                    dr["Quantity"] = Request.QueryString["Quantity"];
                    dr["Photo"] = ds.Tables[0].Rows[0]["Photo"].ToString();

                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["Quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["Totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button1.Enabled = true;

                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Addtocart.aspx");
                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                }
            }
        }
        string Orderdate = DateTime.Now.ToShortDateString();
        Session["Orderdate"] = Orderdate;
        Orderid();


        //string Username = Session["Email_id"].ToString();
        //Label1.Text = Username;
        string Orderi = Session["Orderid"].ToString();
        Label2.Text = Orderi;
        string date = Session["Orderdate"].ToString();
        Label3.Text = date;
    }
    
    
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int totalprice = 0;
        while (i < nrow)
        {
            totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["Totalprice"].ToString());
            i = i + 1;
        }
        return totalprice;
    }
    public void Orderid()
    {
        //string alpha = "abCdfghIjkLmNopqrStuvwXyz123456789";
        //Random r = new Random();
        //char[] myArray = new char[5];
        //for (int i = 0; i < 5; i++)
        //{
        //    myArray[i] = alpha[(int)(35 * r.NextDouble())];
        //}
        string Orderid;
        Orderid = "Order_id" + DateTime.Now.Hour.ToString() +
            DateTime.Now.Second.ToString() +
            DateTime.Now.Day.ToString() +
            DateTime.Now.Month.ToString() +
            DateTime.Now.Year.ToString() +
            //new string(myArray)+
            DateTime.Now.Minute.ToString() +
            DateTime.Now.Second.ToString();
        Session["Orderid"] = Orderid;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];

        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string qtdata;
            sr = Convert.ToInt32(dt.Rows[i]["Sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            qtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                break;

            }
        }
        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["Sno"] = i;
            dt.AcceptChanges();
        }
        Session["buyitems"] = dt;
        Response.Redirect("Addtocart.aspx");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [Order](Orderid,Sno,Pid,Pname,Price,Quantity,Orderdate,Username)values('" + Session["Orderid"] + "'," + dt.Rows[i]["Sno"] + "," + dt.Rows[i]["Pid"] + ",'" + dt.Rows[i]["Pname"] + "'," + dt.Rows[i]["Price"] + "," + dt.Rows[i]["Quantity"] + ",'" + Session["Orderdate"] + "','" + Session["Email_id"] + "')", con);
            cmd.ExecuteNonQuery();
        }
        if (Session["Email_id"] == null)
        {
            Response.Redirect("Login_user.aspx");
        }
        else
        {
            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('your cart is Empty .you cannot place an order');</script>");
            }
            else
            {
                //Response.Redirect("placeorder.aspx");
                string selectedOption = RadioButtonList1.SelectedValue;
                Response.Redirect(selectedOption);
            }
        }

        //string selectedOption = RadioButtonList1.SelectedValue;
        //Response.Redirect(selectedOption);
    }
}
    
