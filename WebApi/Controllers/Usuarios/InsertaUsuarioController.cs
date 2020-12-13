using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Entidades;
using LogicaDeNegocio.Usuarios;

namespace WebApi.Controllers.Usuarios
{
    public class InsertaUsuarioController : ApiController
    {
        // GET: api/InsertaUsuario
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/InsertaUsuario/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/InsertaUsuario
        public int Post([FromBody]Entidades.Usuarios obj)
        {

            return OperacionesUsuarios.InsertaUsuario(obj);
        }

        // PUT: api/InsertaUsuario/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/InsertaUsuario/5
        public void Delete(int id)
        {
        }
    }
}
