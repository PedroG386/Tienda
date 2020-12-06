using System;
using System.Collections.Generic;
using System.Text;
using Entidades;
using SotoredProcedures;

namespace LogicaDeNegocio.Login
{
    public class OperacionesLogin
    {

        //Get
        public static Usuarios GetLogin(string Usuario,string contraseña)
        {
            return Get_Login.Get(Usuario, contraseña);
        }

        public static Usuarios GetUsuarioById(int id_usuario)
        {
            return Get_UsuarioById.Get(id_usuario);
        }
        //Get

    }
}
