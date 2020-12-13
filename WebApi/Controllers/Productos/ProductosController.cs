using System.Collections.Generic;
using System.Web.Http;
namespace WebApi.Controllers.Productos
{
    public class ProductosController : ApiController
    {
        // GET: api/Productos
        public List<Entidades.Productos>Get()
        {
            return LogicaDeNegocio.Productos.OperacionesProductos.GetProductos();
        }

        // GET: api/Productos/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Productos
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Productos/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Productos/5
        public void Delete(int id)
        {
        }
    }
}
