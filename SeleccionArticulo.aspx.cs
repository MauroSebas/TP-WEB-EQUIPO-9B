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

            Articulo articuloSeleccionado = new Articulo();
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulo = negocio.lista();

            int idArticuloSeleccionado = int.Parse(((Button)sender).CommandArgument);

            foreach (Articulo articulo in ListaArticulo)
            {
                if (articulo.id == idArticuloSeleccionado)
                    articuloSeleccionado = articulo;
            }

            Session["Articulo"] = articuloSeleccionado;

            Response.Redirect("FormClient.aspx");


        }

    }
}
