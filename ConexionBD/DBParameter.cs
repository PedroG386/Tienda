using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConexionBD
{
    public class DBParameter
    {
        public string Name { get; set; }
        public ParameterDirection Direction { get; set; }
        public object Value { get; set; }

        public DBParameter(string NombreParametro, ParameterDirection TipoParametro, object ValorParametro)
        {
            Name = NombreParametro;
            Direction = TipoParametro;
            Value = ValorParametro;
        }
    }
}
