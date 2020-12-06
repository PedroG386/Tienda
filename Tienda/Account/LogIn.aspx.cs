using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using LogicaDeNegocio;


namespace Tienda.Account
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ingresa_Click(object sender, EventArgs e)
        {
            string usario = inp_usuario.Text;
            string contraseña = inp_contraseña.Text;
            var userLog = LogicaDeNegocio.Login.OperacionesLogin.GetLogin(usario,contraseña);

            if (userLog.id_usuario > 0&&userLog.estatus==1)
            {
                FormsAuthentication.SetAuthCookie(inp_usuario.Text, true);

                Response.Redirect("/inicio.aspx?id="+userLog.id_usuario, false);
            }

        }
    }
}