using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPWebForms_equipo9B
{
    public partial class SeleccionArticulo : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulo { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                ListaArticulo = negocio.lista();
                RepeaterCards.DataSource = ListaArticulo;
                RepeaterCards.DataBind();

            }
        }

        protected void btnSeleccionArticulo_Click(object sender, EventArgs e)
        {

            string idArticuloSeleccionado = ((Button)sender).CommandArgument;

            Session.Add("articulo", idArticuloSeleccionado);
            Response.Redirect("Formulario.aspx", false);


        }

    }
}
