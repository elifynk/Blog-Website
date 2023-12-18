using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack == false) { 
		    try
		    {
                id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                txtOgrId.Text = id.ToString();

                DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
                txtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                txtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                txtOgrTel.Text = dt.OgrenciSec(id)[0].OGRTEL;
                txtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                txtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                txtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTO;
            }
		    catch (Exception)
		    {
                txtOgrFoto.Text = "Link Girin";

            }
        }
    }

    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciGuncelle(txtOgrAd.Text, txtOgrSoyad.Text, txtOgrTel.Text, txtOgrMail.Text, txtOgrSifre.Text, txtOgrFoto.Text, Convert.ToInt32(txtOgrId.Text));
        Response.Redirect("Default.aspx");
    }
}