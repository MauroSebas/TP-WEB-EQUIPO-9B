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
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        public List<Imagen> ListaImagen { get; set; }

        public Articulo ArticuloSeleccionado { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArticuloNegocio negocioArticulo = new ArticuloNegocio();
                ListaArticulos = negocioArticulo.lista();

                Articulo ArticuloSeleccionado;

                int IdUser = int.Parse(Request.QueryString["Id"]);

                foreach (Articulo articulo in ListaArticulos)
                {
                    if ( articulo.id == IdUser )
                    {
                        ArticuloSeleccionado = articulo;
                    }
                }







                ImagenNegocio negocioImagen = new ImagenNegocio();
                
                
                foreach (Articulo articulo in ListaArticulos)
                {

                    ListaImagen = negocioImagen.listarImagenes(IdUser);



                    if (ListaImagen != null)
                    {

                        articulo.Imagenes = ListaImagen;

                    }
                }
            }
        }
    }
}