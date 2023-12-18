<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciGuncelle.aspx.cs" Inherits="OgrenciGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="color: #2366e4">ÖĞRENCİ GÜNCELLE</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtOgrId" runat="server">Öğrenci Id</asp:Label>
                <asp:TextBox ID="txtOgrId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrAd" runat="server">Öğrenci Ad</asp:Label>
                <asp:TextBox ID="txtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrSoyad" runat="server">Öğrenci Soyad</asp:Label>
                <asp:TextBox ID="txtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrTel" runat="server">Öğrenci Telefon</asp:Label>
                <asp:TextBox ID="txtOgrTel" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrMail" runat="server">Öğrenci Mail</asp:Label>
                <asp:TextBox ID="txtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrSifre" runat="server">Öğrenci Şifre</asp:Label>
                <asp:TextBox ID="txtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrFoto" runat="server">Öğrenci Fotoğraf Linki</asp:Label>
                <asp:TextBox ID="txtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button ID="btn_Edit" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="btn_Edit_Click"/>
    </form>

</asp:Content>
