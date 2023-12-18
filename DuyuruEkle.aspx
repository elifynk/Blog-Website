<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruEkle.aspx.cs" Inherits="DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="color: #2366e4">DUYURU YAP</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="DropDownList1" runat="server">Duyuru Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="txtDuyuruBaslik" runat="server">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="txtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>
                <textarea id="TextArea1" cols="20" rows="7" class ="form-control" runat="server"></textarea>
            </div>
        </div>
        <asp:Button ID="btn_Insert" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="btn_Insert_Click" />
    </form>

</asp:Content>
