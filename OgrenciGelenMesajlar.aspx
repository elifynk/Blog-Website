<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciGelenMesajlar.aspx.cs" Inherits="OgrenciGelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <h2 style="color: #de870d">GELEN MESAJLAR</h2>
    <table class="table table-hover table-bordered">
        <tr class="bg-info">
            <th scope="col">GÖNDEREN</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">TARİH</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("GONDEREN")%></td>
                        <td><%#Eval("BASLIK")%></td>
                        <td><%#Eval("ICERIK")%></td>
                        <td><%#Eval("TARIH")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

