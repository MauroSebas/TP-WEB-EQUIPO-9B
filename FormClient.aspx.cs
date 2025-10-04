using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPWebForms_equipo9B
{
    public partial class FormClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Resolver el problema de que no se cargan los datos del cliente en el formulario en la segunda entrada
                Cliente cliente = Session["Cliente"] as Cliente;
                if (cliente != null)
                {
                    txtDni.Text = cliente.Documento;
                    txtNombre.Text = cliente.Nombre;
                    txtApellido.Text = cliente.Apellido;
                    txtEmail.Text = cliente.Email;
                    txtDireccion.Text = cliente.Direccion;
                    txtCiudad.Text = cliente.Ciudad;
                    txtCp.Text = cliente.CP.ToString();
                }
            }

        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Articulo articuloSeleccionado = Session["Articulo"] as Articulo;

            Page.Validate();
            if(!Page.IsValid) return;

            EmailService emailService = new EmailService();
            ClienteNegocio negCliente = new ClienteNegocio();
            Cliente cliente = new Cliente();

            cliente.Documento = txtDni.Text;
            cliente.Nombre = txtNombre.Text;
            cliente.Apellido = txtApellido.Text;
            cliente.Email = txtEmail.Text;
            cliente.Direccion = txtDireccion.Text;
            cliente.Ciudad = txtCiudad.Text;
            cliente.CP = int.Parse(txtCp.Text);

            negCliente.agregar(cliente);

            //Resolver el problema de que no se cargan los datos del cliente en el formulario en la segunda entrada
            Session["Cliente"] = cliente;

            emailService.armarCorreo(cliente.Email, articuloSeleccionado.nombre, articuloSeleccionado.Imagenes[0].imageUrl);
            emailService.enviarEmail();

            Response.Redirect("Default.aspx");
        }

        protected void ValidateCheckBox(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerminos.Checked;
        }
    }
}