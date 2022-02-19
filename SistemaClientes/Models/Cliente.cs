using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaClientes.Models
{
    public class Cliente
    {
        public string Id { get; set; }
        public string Nome { get; set; }
        public string Sexo { get; set; }
        public string CPF { get; set; }
        public string RG { get; set; }
        public string DataDeNascimento { get; set; }
        public string Endereco { get; set; }
    }
}