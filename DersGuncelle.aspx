<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersGuncelle.aspx.cs" Inherits="DersGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2 style="color: #2366e4">DERS GÜNCELLE</h2>
     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="textDersID" runat="server">Ders ID</asp:Label>
                <asp:TextBox ID="textDersID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDersAdi" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="txtDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button ID="btn_Update" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="btn_Update_Click" />
    </form>
</asp:Content>

