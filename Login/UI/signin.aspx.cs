using Login.BLL;
using Login.DTO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNomeEmpresa.Text = ConfigurationManager.AppSettings.Get("NomeEmpresa");
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            try
            {
                msgerro.Visible = false;
                //instanciando o DTO para armazenamento dos dados da tela
                tblClienteDTO cliente = new tblClienteDTO();
                cliente.Email_cliente = txtEmail.Text;
                cliente.Senha_cliente = txtsenha.Text;
                //consultar o email e a senha no banco;
                bllTblClientes bllCliente = new bllTblClientes();
                if (bllCliente.Autenticar(cliente.Email_cliente, cliente.Senha_cliente))
                {
                    msgerro.Visible = true;
                    msgerro.Text = "Email Localizado";
                }
                else
                {
                    msgerro.Visible = true;
                    msgerro.Text = "Cliente não encontrado";
                }
            }
            catch(Exception ex)
            {
                msgerro.Visible = true;
                msgerro.Text = ex.Message;
            }
        }
    }
}