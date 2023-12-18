using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProfilGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["OGRNUMARA"].ToString();
        if (Page.IsPostBack == false)
        {

        }
    }

    protected void btn_Update_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == TextBox3.Text)
        {
            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.SifreDegistir(TextBox3.Text, TextBox1.Text);
            Response.Redirect("OgrenciDefault.aspx?OGRNUMARA=" + TextBox1.Text);

        }
        else
        {
            TextBox3.Text = "Şifreler Aynı Değil ! ";
        }
    }
}