using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
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

        //cuando se hace click sobre el boton selected se ejecuta este evento
        protected void grdProdAdmin_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //se busca los datos en el item template

            String s_codigoArtProducto = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_CodigoArticulo")).Text;
            String s_PuProd = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_PrecioUnitario")).Text;
            String s_Stock = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_Stock")).Text;
            String s_Categoria = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_Categoria")).Text;
            String s_Descripcion = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_Descripcion")).Text;
            String s_Url = ((Label)grdProdAdmin.Rows[e.NewSelectedIndex].FindControl("lbl_it_URL")).Text;

            lblMensaje.Text = "Usted selecciono " + s_codigoArtProducto + " " + s_PuProd + " " + s_Stock + " " + s_Categoria + " " + s_Descripcion + " " + s_Url;
        }

        //EVENTOS QUE SUCEDEN CUANDO EL USUARIO CLIKEA SOBRE EL BOTON ELIMINAR
        protected void grdProdAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //busco el item template id_producto
            String s_codigoArtProducto = ((Label)grdProdAdmin.Rows[e.RowIndex].FindControl("lbl_it_CodigoArticulo")).Text;
           
            Productos prod = new Productos();
            prod.set_codigo_producto(Convert.ToChar(s_codigoArtProducto));
            DaoProducto admProd = new DaoProducto();
         
            admProd.eliminarProducto(prod);

            cargarGridVew();
        }
    }
}