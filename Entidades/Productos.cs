using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades
{
    public class Productos
    {
        public int id_producto { get; set; }
        public string Nombre { get; set; }
        public string Clave { get; set; }
        public int id_categoriaProducto { get; set; }
        public  float costo { get; set; }
        public float precio { get; set; }
        public int Activo { get; set; }
        public string strfIle { get; set; }
        public string descripcion { get; set; }
    }
}
