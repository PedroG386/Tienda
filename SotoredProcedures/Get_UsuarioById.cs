using ConexionBD;
using Entidades;
using System.Collections.Generic;
namespace SotoredProcedures
{
    public class Get_UsuarioById
    {
        public static Usuarios Get(int id_usuario)
        {
            DBManager conexion = new DBManager();
            if (id_usuario == 0)
            {
                throw new System.ArgumentNullException(nameof(id_usuario));
            }
            else
            {
                List<DBParameter> parametros = new List<DBParameter>
                {
                    new DBParameter(NombreParametro: "id_usuario", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:id_usuario),
                 
                };

                return conexion.ExecuteSingle<Usuarios>("Get_UsuarioById", parametros);
            }

        }
    }
}
