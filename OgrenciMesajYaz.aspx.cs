using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciMesajYaz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtGonderen.Text = Session["OGRNUMARA"].ToString();
    }


    protected void btn_send_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
        dt.MesajYaz(txtGonderen.Text, txtAlici.Text, txtBaslik.Text, txtIcerik.Value);
        Response.Redirect("OgrenciGidenMesajlar.aspx");
    }
}