using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.YaMaquetado
{
    public partial class Productoss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //   SqlDataSource1.SelectCommand = "SELECT [Stock], [PU_Pro], [Descripcion], [url], [Categoria] FROM [Productos] where  [Estado] = 'True' and Where [Descripcion] LIKE '%"+txtProductos.Text+"%'";
            // SE NECESITA ADAPTAR LA SIGUIENTE CONSULTA SELECT [Stock], [PU_Pro], [Descripcion], [url], [Categoria] FROM [Productos] where  [Estado] = 'True' and Descripcion like '%rev%'
            // REV TIENE QUE SER EL TEXTO INGRESADO EN EL TXTBUSCAR.
        }
    }
}