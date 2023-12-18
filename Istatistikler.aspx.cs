using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Istatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DATA1TableAdapter dt = new DataSetTableAdapters.TBL_DATA1TableAdapter();

        TextBox1.Text = "Toplam Öğrenci Sayısı : " +dt.Istatistik1().ToString();
        TextBox2.Text = "Toplam Öğretmen Sayısı : " +dt.Istatistik2().ToString();
        TextBox3.Text = "Toplam Ders Sayısı : " +dt.Istatistik3().ToString();
        TextBox4.Text = "Toplam Geçen Öğrenci Sayısı : " + dt.Istatistik14().ToString();
        TextBox5.Text = "Toplam Kalan Öğrenci Sayısı : " + dt.Istatistik15().ToString();
        TextBox6.Text = "Matematik Dersi 1.Sınav Ortalaması : " + dt.Istatistik9().ToString();
        TextBox7.Text = "Matematik Dersi 1.Sınavdan En Yüksek Puanı Alan Kişi : " + dt.Istatistik4().ToString();
        TextBox8.Text = "Edebiyat Dersi 1.Sınav Ortalaması : " + dt.Istatistik13().ToString();
        TextBox9.Text = "Edebiyat Dersi 1.Sınavdan En Yüksek Puanı Alan Kişi : " + dt.Istatistik5().ToString();
        TextBox10.Text = "Fizik Dersi 1.Sınav Ortalaması : " + dt.Istatistik11().ToString();
        TextBox11.Text = "Fizik Dersi 1.Sınavdan En Yüksek Puanı Alan Kişi : " + dt.Istatistik6().ToString();
        TextBox12.Text = "Dil Anlatım Dersi 1.Sınav Ortalaması : " + dt.Istatistik10().ToString();
        TextBox13.Text = "Dil Anlatım Dersi 1.Sınavdan En Yüksek Puanı Alan Kişi : " + dt.Istatistik7().ToString();
        TextBox14.Text = "Biyoloji Dersi 1.Sınav Ortalaması : " + dt.Istatistik12().ToString();
        TextBox15.Text = "Biyoloji Dersi 1.Sınavdan En Yüksek Puanı Alan Kişi : " + dt.Istatistik8().ToString();
    }
}