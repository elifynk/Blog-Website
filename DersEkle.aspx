<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="color: #2366e4">DERS EKLE</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtDers" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="txtDers" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button ID="btn_Insert" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="btn_Insert_Click" />
    </form>

</asp:Content>
