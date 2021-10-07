using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


    //NOTAS IMPORTANTES DEL LOGIN.
    //1)Valida correctamente que solo pueda haber una cuenta con el mismo alias.
    //2)Solo valida que entre con la id aunque la contraseña sea cualquier cosa.

    //=======A LA HORA DE REGISTRARSE==============//

    //3)cuando el dni esta duplicado crashea.
    //4)cuando el correo esta duplicado crashea.

//hola ESTE SOY YO(JERE)

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

            //valida solamente la id ?
            //fixeado el login.

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

        protected void txtContrasenia_TextChanged(object sender, EventArgs e)
        {

        }
    }
}