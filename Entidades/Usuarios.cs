using System;
using System.Collections.Generic;
using System.Text;

namespace Entidades
{
    public class Usuarios
    {
        public int id_usuario { get; set; }
        public string Usuario { get; set; }
        public string contraseña { get; set; }
        public int id_rol { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string correo { get; set; }
        public string telefono { get; set; }
        public int estatus { get; set; }
        public string Pais { get; set; }
        public string Ciudad { get; set; }
        public DateTime fechaRegistro { get; set; }


    }
}
