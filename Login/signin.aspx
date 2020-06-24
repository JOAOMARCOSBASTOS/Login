<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="Login.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign IN</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" type="email" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="lblsenha" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="txtsenha" type="password" runat="server"></asp:TextBox>
            <br/><br/>

            <asp:Button ID="btnSingin" runat="server" Text="Login" />
            <p>

            </p>
            <asp:Label ID="lblNomeEmpresa" runat="server" Text="Nome Empresa"></asp:Label>
        </div>
    </form>
</body>
</html>
