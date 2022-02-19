using SistemaClientes.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaClientes.Views
{
    public partial class CreateCliente : System.Web.UI.Page
    {
        private const string _Session_Clientes_Key = "Clientes";

        protected void Page_Load(object sender, EventArgs e)
        {
            ComparevalidatorDataNascimento.ValueToCompare = DateTime.Now.ToShortDateString();
        }

        protected void ClearData(object sender, EventArgs e)
        {
            try
            {
                ClearData();
            }
            catch (Exception ex)
            {
                Response.Write(string.Format("<script>alert('{0}');</script>", ex.Message));
            }
        }

        protected void RegisterData(object sender, EventArgs e)
        {
            try
            {
                var clientes = GetSessionClientes();

                var novoCliente = new Cliente()
                {
                    Id = Guid.NewGuid().ToString(),
                    Nome = TextBoxNome.Text,
                    Sexo = DropDownListSexo.SelectedValue,
                    CPF = TextBoxCpf.Text,
                    RG = TextBoxRG.Text,
                    DataDeNascimento = TextBoxDataNascimento.Text,
                    Endereco = TextBoxEndereco.Text
                };

                clientes.Add(novoCliente.Id, novoCliente);

                Response.Redirect("~/Views/ReadCliente.aspx");
            }
            catch (Exception ex) 
            {
                Response.Write(string.Format("<script>alert('{0}');</script>", ex.Message));
            }
        }

        private Dictionary<string, Cliente> GetSessionClientes()
        {
            if (Session[_Session_Clientes_Key] == null)
            {
                Session[_Session_Clientes_Key] = new Dictionary<string, Cliente>();
            }

            return (Dictionary<string, Cliente>)Session[_Session_Clientes_Key];
        }

        private void ClearData() 
        {
            TextBoxNome.Text = "";
            DropDownListSexo.SelectedValue = "";
            TextBoxCpf.Text = "";
            TextBoxRG.Text = "";
            TextBoxDataNascimento.Text = "";
            TextBoxEndereco.Text = "";
        }
    }
}