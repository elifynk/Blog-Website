using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotGuncelle : System.Web.UI.Page
{
    int nid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

            DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
            txtOgrID.Text = dt.NotlariGetir2(nid)[0].OGRENCIID.ToString();
            txtOgrAdSoyad.Text = dt.NotlariGetir2(nid)[0].OGRENCIADSOYAD;
            txtDersAd.Text = dt.NotlariGetir2(nid)[0].DERSAD;
            txtSinav1.Text = dt.NotlariGetir2(nid)[0].SINAV1.ToString();
            txtSinav2.Text = dt.NotlariGetir2(nid)[0].SINAV2.ToString();
            txtSinav3.Text = dt.NotlariGetir2(nid)[0].SINAV3.ToString();
            txtOrt.Text = dt.NotlariGetir2(nid)[0].ORTALAMA.ToString();
            txtDurum.Text = dt.NotlariGetir2(nid)[0].DURUM.ToString();
        }
    }

    protected void BtnHesapla_Click(object sender, EventArgs e)
    {
        double sinav1, sinav2, sinav3;
        double ortalama;
        sinav1 = Convert.ToInt32(txtSinav1.Text);
        sinav2 = Convert.ToInt32(txtSinav2.Text);
        sinav3 = Convert.ToInt32(txtSinav3.Text);
        ortalama = (sinav1 + sinav2 + sinav3) / 3;
        txtOrt.Text = ortalama.ToString("0.00");

        if (ortalama >= 50)
        {
            txtDurum.Text = "True";
        }
        else
        {
            txtDurum.Text = "False";
        }
    }

    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        dt.NotGuncelle(byte.Parse(txtSinav1.Text), byte.Parse(txtSinav2.Text), byte.Parse(txtSinav3.Text), decimal.Parse(txtOrt.Text), 
            bool.Parse(txtDurum.Text), nid);

        Response.Redirect("NotListesi.aspx");
    }
}