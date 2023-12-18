<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="GelenMesajlar.aspx.cs" Inherits="GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="color: #2366e4">GELEN MESAJLAR</h2>
    <table class="table table-hover table-bordered">
        <tr class="bg-info">
            <th scope="col">MESAJ ID</th>
            <th scope="col">GÖNDEREN NO</th>
            <th scope="col">GÖNDEREN AD SOYAD</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">TARİH</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MESAJID")%></td>
                        <td><%#Eval("GONDEREN")%></td>
                        <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("BASLIK")%></td>
                        <td><%#Eval("ICERIK")%></td>
                        <td><%#Eval("TARIH")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

