<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="DuyuruGoruntule.aspx.cs" Inherits="DuyuruGoruntule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <h2 style="color: #de870d">DUYURULAR</h2>
    <table class="table table-hover table-bordered">
        <tr class="bg-info">
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">ÖĞRETMEN</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DUYURUID")%></td>
                        <td><%#Eval("DUYURUBASLIK")%></td>
                        <td><%#Eval("DUYURUICERIK")%></td>
                        <td><%#Eval("DUYURUOGRT")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

