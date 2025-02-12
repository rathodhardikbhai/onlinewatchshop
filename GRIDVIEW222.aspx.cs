using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_GRIDVIEW222 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string selectedRowData = Request.QueryString["data"];
            List<GridViewRow> selectedRows = (List<GridViewRow>)Session["SelectedRows"];
            GridView1.DataSource = selectedRows;
            GridView1.DataBind();
        }

    }
}