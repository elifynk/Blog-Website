<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotGuncelle.aspx.cs" Inherits="NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="color: #2366e4">NOT GÜNCELLEME</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
          <div>
                <asp:Label for="txtDersAd" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrID" runat="server">Öğrenci ID</asp:Label>
                <asp:TextBox ID="txtOgrID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrAdSoyad" runat="server">Öğrenci Ad Soyad</asp:Label>
                <asp:TextBox ID="txtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSinav1" runat="server">Sınav 1</asp:Label>
                <asp:TextBox ID="txtSinav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSinav2" runat="server">Sınav 2</asp:Label>
                <asp:TextBox ID="txtSinav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSinav3" runat="server">Sınav 3</asp:Label>
                <asp:TextBox ID="txtSinav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOrt" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="txtOrt" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDurum" runat="server">Durum</asp:Label>
                <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button ID="BtnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-warning" OnClick="BtnHesapla_Click"/>
        <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="BtnGuncelle_Click"/>
    </form>

</asp:Content>
