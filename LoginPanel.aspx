<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="LoginPanel" %>

<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="height: 792px; margin-top: auto; background-image: url('images.jpg');">
        <div style="width: 700px; margin: auto">
            <br />
            <br />
            <h2 style="color: #FFFFFF"; class="text-center">Okul Yönetim Sistemi Ekranı</h2>
            <br />
            <br />
            <div style="text-align:center">
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/download.png" />
            </div>
                <br />
                <br />
            <div>
                <asp:Label for="txtNumara" runat="server" ForeColor="White">Kullanıcı Numarası</asp:Label>
                <asp:TextBox ID="txtNumara" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSifre" runat="server" ForeColor="White">Şifre</asp:Label>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="lblMessage" runat="server" Visible="False" CssClass="error-message" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="#ED1D22"></asp:Label>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Öğrenci Girişi" Width="320px" CssClass="btn btn-primary" OnClick="Button1_Click" Height="40px" />
              
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
              
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" Width="320px" CssClass="btn btn-primary" Height="40px" OnClick="Button2_Click" BackColor="#094B85" />
                <br />
                <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" Width="200px" CssClass="btn btn-warning" />
      
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
            <asp:Button ID="Button4" runat="server" Text="Yardım" Width="200px" CssClass="btn btn-info" />
        </div>
    </form>
</body>
</html>
