using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dao;


namespace Vistas.YaMaquetado
{
    public partial class AdminProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                cargarGridVew();
            }
        }

        public void cargarGridVew()
        {
            DaoProducto GestionProductos = new DaoProducto();
            //obtengo todos los libros y los cargo sobre la grid view
            grdProdAdmin.DataSource = GestionProductos.ObtenerTodosLosProductos();
            grdProdAdmin.DataBind();
        }
    }
}