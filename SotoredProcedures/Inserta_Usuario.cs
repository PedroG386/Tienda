using System;
using System.Collections.Generic;
using System.Text;
using Entidades;
using ConexionBD;
namespace SotoredProcedures
{
   public class Inserta_Usuario
    {
        public static int Insert(Usuarios obj)
        {
            ConexionBD.DBManager conexion = new ConexionBD.DBManager();
            if (obj == null)
            {
                throw new System.ArgumentNullException(nameof(obj));
            }
            else
            {
                List<ConexionBD.DBParameter> parametros = new List<ConexionBD.DBParameter>
                {
                    new ConexionBD.DBParameter(NombreParametro: "Usuario", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.Usuario),
                    new ConexionBD.DBParameter(NombreParametro: "contraseña", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.contraseña),
                    new ConexionBD.DBParameter(NombreParametro: "id_rol", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.id_rol),
                    new ConexionBD.DBParameter(NombreParametro: "Nombre", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.Nombre),
                    new ConexionBD.DBParameter(NombreParametro: "Apellidos", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.Apellidos),
                    new ConexionBD.DBParameter(NombreParametro: "correo", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.correo),
                    new ConexionBD.DBParameter(NombreParametro: "telefono", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.telefono),
                    new ConexionBD.DBParameter(NombreParametro: "estatus", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.estatus),
                    new ConexionBD.DBParameter(NombreParametro: "Pais", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.Pais),
                    new ConexionBD.DBParameter(NombreParametro: "Ciudad", TipoParametro: System.Data.ParameterDirection.Input, ValorParametro:obj.Ciudad),



                };

                return conexion.ExecuteNonQuery("Inserta_Usuarios", parametros);
            }

        }
    }
}
