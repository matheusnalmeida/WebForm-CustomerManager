using SistemaClientes.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaClientes.Infra
{
    public class MemoryContext
    {
        private static MemoryContext _instance;
        
        public Dictionary<string, Cliente> TableCliente { get; }

        private MemoryContext() 
        {
            TableCliente = new Dictionary<string, Cliente>();
        }

        public static MemoryContext GetInstance()
        {
            if (_instance == null)
            {
                _instance = new MemoryContext();
            }
            return _instance;
        }
    }
}