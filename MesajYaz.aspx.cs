using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajYaz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtGonderen.Text = "0001";
    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
        dt.MesajYaz(txtGonderen.Text, txtAlici.Text, txtBaslik.Text, txtIcerik.Value);
        Response.Redirect("GonderilenMesajlar.aspx");

    }
}