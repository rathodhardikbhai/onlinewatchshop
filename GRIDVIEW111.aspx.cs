using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_GRIDVIEW111 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //GridViewRow selectedRow = GridView1.SelectedRow;
        //string url = "GRIDVIEW222.ASPX?data" + selectedRow.Cells[0].Text;
        //Response.Redirect(url);

        //List<GridViewRow> selectedRows = new List<GridViewRow>();
        //foreach (GridViewRow row in GridView1.Rows)
        //{
        //    CheckBox chkSelect = (CheckBox)row.FindControl("chkSelect");

        //    if (chkSelect.Checked)
        //    {
        //        selectedRows.Add(row);
        //    }
        //}
        //Session["SelectedRows"] = selectedRows;
        //Response.Redirect("GRIDVIEW222.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        List<GridViewRow> selectedRows = new List<GridViewRow>();
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chkSelect = (CheckBox)row.FindControl("chkSelect");

            if (chkSelect.Checked)
            {
                selectedRows.Add(row);
            }
        }
        Session["SelectedRows"] = selectedRows;
        Response.Redirect("GRIDVIEW222.aspx");
    }
}