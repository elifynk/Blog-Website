<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciDefault.aspx.cs" Inherits="OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <h2 style="color: #de870d">PROFİLİM</h2>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false">Numara : </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false">Ad Soyad : </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="false">Telefon : </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="false">Mail Adresi : </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="false">Şifre : </asp:TextBox>
            </div>

        </div>
            <asp:Button ID="btn_Update" runat="server" Text="Şifre Değiştir" CssClass="btn btn-primary" OnClick="btn_Update_Click" />
    </form>
</asp:Content>

