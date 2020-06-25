<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="Login.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign IN</title>
    <link href="../Contents/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="text-align: center; margin-top: 10px">
                    <asp:Image ID="imgLogo" ImageUrl="../imgs/logoCotemig.PNG" runat="server" Width="200px" />
                    <br /><br />
                    <asp:Label ID="lblTitulo" runat="server" Font-Size="XX-Large" Text="Acesso ao Sistema"></asp:Label>
                    <br /><br />
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" type="email" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidarEmail"
                        ControlToValidate="txtEmail"
                        ErrorMessage="O campo email é obrigatorio!"
                        ForeColor="Red"
                        runat="server" />

                    <br/>
                    <asp:Label ID="lblsenha" runat="server" Text="Senha"></asp:Label>
                    <asp:TextBox ID="txtsenha" type="password" runat="server" CssClass="form-control"></asp:TextBox>
                    <br/>

                    <asp:Button ID="btnSingin" class="btn btn-lg btn-primary btn-block" runat="server" Text="Login" />
                    <p>

                    </p>
                    <asp:LinkButton ID="btncadastrar" runat="server">Não Sou Cadastrado. Clique aqui</asp:LinkButton>
                    <br />
                    <asp:Label ID="lblNomeEmpresa" runat="server" Text="Nome Empresa"></asp:Label>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </form>
</body>
</html>