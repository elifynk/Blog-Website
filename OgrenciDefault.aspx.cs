using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["OGRNUMARA"].ToString();

        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();

        TextBox2.Text = "ÖĞRENCİ ADI SOYADI : " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRAD+" "+ dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSOYAD;
        TextBox3.Text = "ÖĞRENCİ TELEFONU : " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRTEL;
        TextBox4.Text = "ÖĞRENCİ MAİL ADRESİ : " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRMAIL;
        TextBox5.Text = "ÖĞRENCİ ŞİFRESİ : " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSIFRE;
    }

    protected void btn_Update_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProfilGuncelle.aspx");
    }
}