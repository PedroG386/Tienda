using ConexionBD;
using Entidades;
using System.Collections.Generic;
namespace SotoredProcedures
{
    public class Get_Productos
    {
        public static List<Productos> Get()
        {
            DBManager conexion = new DBManager();
         
                return conexion.ExecuteDataTable<Productos>("Get_Productos");



        }
    }
}
