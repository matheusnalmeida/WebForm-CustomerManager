using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;

namespace SistemaClientes.Utils
{
    public static class DataTableUtil
    {
        public static DataTable GenerateDataTableFromClass<T>(List<T> genericList) 
        {
            Type genericType = typeof(T);

            PropertyInfo[] properties = genericType.GetProperties();

            DataTable dt = new DataTable();

            foreach (PropertyInfo pi in properties)
            {
                if (!pi.Name.ToLower().Equals("id")) 
                {
                    dt.Columns.Add(pi.Name);
                }
            }

            foreach (T p in genericList)
            {
                DataRow dr = dt.NewRow();

                foreach (PropertyInfo pi in properties)
                {
                    if (!pi.Name.ToLower().Equals("id")) 
                    {
                        dr[pi.Name] = pi.GetValue(p, null);
                    }
                }                
                dt.Rows.Add(dr);
            }

            return dt;
        }
    }
}