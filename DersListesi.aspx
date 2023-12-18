<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersListesi.aspx.cs" Inherits="DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="color: #2366e4">DERS LİSTESİ</h2>
    <table class="table table-hover table-bordered">
        <tr class="bg-info">
            <th scope="col">DERS ID</th>
            <th scope="col">DERS ADI</th>
            <th scope="col">İŞLEMLER</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DERSID")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "DersSil.aspx?DersID="+ Eval("DersID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "DersGuncelle.aspx?DersID="+ Eval("DersID") %>' ID="HyperLink2"  runat="server" CssClass="btn btn-info">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-primary">Ders Ekle</asp:HyperLink>
</asp:Content>