using System;
using System.Collections.Generic;
using System.Text;
using Entidades;
using SotoredProcedures;
using LogicaDeNegocio;

namespace LogicaDeNegocio.Usuarios
{
    public class OperacionesUsuarios
    {




        //INSERT
        public static int InsertaUsuario(Entidades.Usuarios obj)
        {
            return Inserta_Usuario.Insert(obj);
        }


        //INSERT
    }
}
