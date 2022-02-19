using SistemaClientes.Models;
using SistemaClientes.Utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaClientes.Views
{
    public partial class ReadCliente : Page
    {
        private const string _Session_Clientes_Key = "Clientes";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                var clientes = (Dictionary<string, Cliente>)Session[_Session_Clientes_Key];

                DataTable dt = DataTableUtil.GenerateDataTableFromClass(clientes.Select(it => it.Value).ToList());
                GridViewCliente.DataSource = dt;
                GridViewCliente.DataBind();
            }
        }
    }
}