using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio; 
namespace Vistas
{
    public partial class admin_Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio neg = new Negocio
            if (Session["Alias"]!=null)
            {
                // trae informacion 
                lblMensaje.Text = Session["Alias"].ToString();
                lblMensaje.Text = Convert.ToString()
            }
        }
    }
}