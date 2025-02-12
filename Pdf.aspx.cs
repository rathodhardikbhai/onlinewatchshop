using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


public partial class USER_Pdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Username = Session["Email_id"].ToString();
        Label5.Text = Username;
        string Orderid = Session["Orderid"].ToString();
        Label1.Text = Orderid;
        findorderdate(Label1.Text);
        string address = Session["address"].ToString();
        Label3.Text = address;
        showgrid(Label1.Text);
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        //base.VerifyRenderingInServerForm(control);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        exportpdf();
    }
    private void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-dispotion", "attachement;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f,10f,100f, 0f);
        HTMLWorker htmlparse = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparse.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }

    private void findorderdate(string Orderid)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from [Order] where Orderid='" + Label1.Text + "'");
        //+Orderid+;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0) 
        {
            Label2.Text = ds.Tables[0].Rows[0]["Orderdate"].ToString();
        }
        con.Close();
    }

    private void showgrid(string Orderid)
    {
        DataTable dt = new DataTable();
        DataRow dr;
        dt.Columns.Add("Sno");
        dt.Columns.Add("Pid");
        dt.Columns.Add("Pname");
        dt.Columns.Add("Price");
        dt.Columns.Add("Quantity");
        dt.Columns.Add("Totalprice");

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\visual2012_Program\Project\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from [Order] where Orderid='" + Label1.Text + "'");
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int totalrows = ds.Tables[0].Rows.Count;
        int i = 0;
        int grandtotal = 0;
        while (i < totalrows)
        {
            dr = dt.NewRow();
            dr["Sno"] = ds.Tables[0].Rows[i]["Sno"].ToString();
            dr["Pid"] = ds.Tables[0].Rows[i]["Pid"].ToString();
            dr["Pname"] = ds.Tables[0].Rows[i]["Pname"].ToString();
            dr["Price"] = ds.Tables[0].Rows[i]["Price"].ToString();
            dr["Quantity"] = ds.Tables[0].Rows[i]["Quantity"].ToString();
            int Price=Convert.ToInt32(ds.Tables[0].Rows[i]["Price"].ToString());
            int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["Quantity"].ToString());
            int totalprice = Price * quantity;
            dr["Totalprice"] = totalprice;
            grandtotal = grandtotal + totalprice;
            dt.Rows.Add(dr);
            i = i + 1;
        }
        dt.Rows.Add(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label4.Text = grandtotal.ToString();
    }
}