using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPWebForms_equipo9B
{
    public partial class FormClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

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

            Response.Redirect("Default.aspx");
        }
    }
}