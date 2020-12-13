using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using LogicaDeNegocio;

namespace Tienda
{
    public partial class Padre : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] ==null)
            {
                userUnLoged();
             }
                     
            else
            {
                userLoged(int.Parse(Request.QueryString["id"]));
            }
        }

        void userLoged(int idUsuario)
        {
            var usuarioLogeado = LogicaDeNegocio.Login.OperacionesLogin.GetUsuarioById(idUsuario);

            if (usuarioLogeado.id_usuario != 0)
            {
                string HTML = "";
                HTML += "<br>Bienvenido de nuevo: ";
                HTML += "<p><i style=\"color:green;\" class=\"fas fa-dot-circle\"></i>"
                    + usuarioLogeado.Usuario + "</p>";
                HTML += "<p>" + usuarioLogeado.correo + "</p><br>";
                //HTML += "<p>" + usuarioLogeado.Pais + "</p><br>";

                lbl_info.Text = HTML;

                lbl_logout.Text = "<a style=\"color:white;\" href=\"/Account/LogIn\" class=\"btn btn-danger\"><i class=\"fas fa-sign-out-alt\"></i>Cerrar Sesión</a>";
            }


        }

        void userUnLoged()
        {
            string BUTTONS = "";
            lbl_info.Text = "";

            BUTTONS += "<a class=\"btn btn-primary\" href=\"/Account/Register\"><i class=\"fas fa-user-plus\"></i>Registrate</a>";
            BUTTONS += "<a class=\"btn btn-success\" href=\"/Account/LogIn\"><i style=\"color:white;\" class=\"fas fa-person-booth\"></i>Iniciar Sesión</a>";

            lbl_btnsLoginRegister.Text = BUTTONS;
            lbl_logout.Text = "";
        }
    }
}