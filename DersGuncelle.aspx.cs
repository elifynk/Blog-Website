using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id;
        if (Page.IsPostBack == false)
        {
            id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());

            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();

            textDersID.Text = id.ToString();
            txtDersAdi.Text = dt.DersGetir(id)[0].DERSAD;
        }
    }

    protected void btn_Update_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        dt.DersGuncelle(txtDersAdi.Text,  Convert.ToInt32(textDersID.Text));
        Response.Redirect("DersListesi.aspx");
    }
}