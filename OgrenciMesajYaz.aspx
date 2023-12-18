<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciMesajYaz.aspx.cs" Inherits="OgrenciMesajYaz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <h2 style="color: #de870d">MESAJ GÖNDER</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtGonderen" runat="server">Gönderen</asp:Label>
                <asp:TextBox ID="txtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="txtAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtBaslik" runat="server">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtIcerik" runat="server">Mesaj İçerik</asp:Label>
                <textarea id="txtIcerik" cols="20" rows="7" class="form-control" runat="server"></textarea>
            </div>
        </div>
        <asp:Button ID="btn_send" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="btn_send_Click" />
    </form>
</asp:Content>

