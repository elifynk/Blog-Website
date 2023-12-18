using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPanel : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=UdemySiteDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * from TBL_OGRENCI Where OGRNUMARA=@p1 and OGRSIFRE=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", txtNumara.Text);
        komut.Parameters.AddWithValue("@p2", txtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("OGRNUMARA", txtNumara.Text);
            Response.Redirect("OgrenciDefault.aspx");
        }
        else
        {
            lblMessage.Text = "Yanlış Şifre!";
            lblMessage.Visible = true;
        }
        baglanti.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * from TBL_OGRETMEN Where OGRTNUMARA=@p1 and OGRTSIFRE=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", txtNumara.Text);
        komut.Parameters.AddWithValue("@p2", txtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("OGRTNUMARA", txtNumara.Text);
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblMessage.Text = "Yanlış Şifre!";
            lblMessage.Visible = true;
        }
        baglanti.Close();
    }

}