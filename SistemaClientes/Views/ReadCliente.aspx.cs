using SistemaClientes.Infra;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                var clientes = MemoryContext.GetInstance().TableCliente;
                if (!clientes.Any())
                {
                    LabelNenhumCliente.Visible = true;
                }
                DataTable dt = DataTableUtil.GenerateDataTableFromClass(clientes.Select(it => it.Value).ToList());
                GridViewCliente.DataSource = dt;
                GridViewCliente.DataBind();
            }
        }
    }
}