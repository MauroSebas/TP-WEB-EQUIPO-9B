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
        public List<Imagen> ListaImagen { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                ListaArticulo = negocio.lista();
                ImagenNegocio negocioImagen = new ImagenNegocio();


                foreach (Articulo articulo in ListaArticulo)
                {

                    ListaImagen = negocioImagen.listarImagenes(articulo.id);

                    if ( ListaImagen != null)
                    {

                        articulo.Imagenes = ListaImagen;

                    }



                }
            }
        }

        protected void SeleccionarArticulo(object sender, CommandEventArgs e)
        {

        }

    }
}