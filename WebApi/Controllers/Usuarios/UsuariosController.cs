﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Entidades;

namespace WebApi.Controllers.Usuarios
{
    public class UsuariosController : ApiController
    {
        // GET: api/Usuarios
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Usuarios/5
        public Entidades.Usuarios Get(int id)
        {
            return LogicaDeNegocio.Login.OperacionesLogin.GetUsuarioById(id);
        }

        // POST: api/Usuarios
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Usuarios/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Usuarios/5
        public void Delete(int id)
        {
        }
    }
}
