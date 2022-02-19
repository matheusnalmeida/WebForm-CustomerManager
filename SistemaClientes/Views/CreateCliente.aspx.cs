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
        protected void Page_Load(object sender, EventArgs e)
        {
            ComparevalidatorDataNascimento.ValueToCompare = DateTime.Now.ToShortDateString();
        }

        protected void ClearData(object sender, EventArgs e)
        {
            ClearData();
        }

        protected void RegisterData(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/ReadCliente.aspx");            
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