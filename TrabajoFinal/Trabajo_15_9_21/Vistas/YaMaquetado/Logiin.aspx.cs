using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.YaMaquetado
{
    public partial class Cuentaa : System.Web.UI.Page
    {
        NegocioCuenta neg = new NegocioCuenta();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.validarCuenta(txtAlias.Text, txtContrasenia.Text);
            if (estado == true)
            {
                Session["Alias"] = txtAlias.Text;
                Response.Redirect("index.aspx");
            }
            else
            {

                lblMensaje.Text = "No se pudo ingresar";

            }
        }
    }
}