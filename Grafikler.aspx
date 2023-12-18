<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Grafikler.aspx.cs" Inherits="Grafikler" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="color: #2366e4">GRAFİKLER</h2>
    <form id="form1" runat="server">
    <table class="table table-hover table-bordered">
        <tr>
            <td>
                <asp:Chart ID="Chart1" runat="server" Width="500px" Palette="Pastel">
                    <series>
                        <asp:Series Name="Notlar" YValuesPerPoint="4" IsValueShownAsLabel="True" LegendText="#VALX">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
            <td>
                <asp:Chart ID="Chart2" runat="server" Width="500px" Palette="Pastel">
                    <series>
                        <asp:Series Name="DersAd" ChartType="Doughnut" IsValueShownAsLabel="True" Legend="Legend1" LegendText="#VALX">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Legends>
                        <asp:Legend Name="Legend1">
                        </asp:Legend>
                    </Legends>
                </asp:Chart>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart3" runat="server" Width="500px" Palette="Pastel">
                    <series>
                        <asp:Series Name="Cinsiyet" ChartType="Pie" Legend="Legend1" IsValueShownAsLabel="True" LegendText="#VALX">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Legends>
                        <asp:Legend Name="Legend1">
                        </asp:Legend>
                    </Legends>
                </asp:Chart>
            </td>
            <td>
                <asp:Chart ID="Chart4" runat="server" Width="500px" Palette="Pastel">
                    <series>
                        <asp:Series Name="Dersler">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
        </tr>
    </table>
</form>
</asp:Content>
