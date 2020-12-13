using SotoredProcedures;
using System.Collections.Generic;

namespace LogicaDeNegocio.Productos
{
    public class OperacionesProductos
    {

        //GET
        public static List<Entidades.Productos> GetProductos()
        {
            return Get_Productos.Get();
        }
        //GET
    }
}
