using Entidades;
using System.Collections.Generic;

namespace SotoredProcedures
{
    public class Get_Login
    {
        public static Usuarios Get(string Usuario,string contraseña )
        {
           ConexionBD.DBManager conexion = new ConexionBD.DBManager();
            if (Usuario == null)
            {
                throw new System.ArgumentNullException(nameof(Usuario));
            }
            else
            {
                List<ConexionBD.DBParameter> parametros = new List<ConexionBD.DBParameter>
                {
                    new ConexionBD.DBParameter(NombreParametro: "Usuario", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:Usuario),
                    new ConexionBD.DBParameter(NombreParametro: "contraseña", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:contraseña),
                };

                return conexion.ExecuteSingle<Usuarios>("Get_Login", parametros);
            }

        }
    }
}
