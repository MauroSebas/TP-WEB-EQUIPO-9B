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
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if(!Page.IsValid) return;


            ClienteNegocio negCliente = new ClienteNegocio();
            Cliente cliente = new Cliente();

            cliente.Documento = txtDni.Text;
            cliente.Nombre = txtNombre.Text;
            cliente.Apellido = txtApellido.Text;
            cliente.Email = txtEmail.Text;
            cliente.Direccion = txtDireccion.Text;
            cliente.Ciudad = txtCiudad.Text;
            cliente.CP = int.Parse(txtCp.Text);

            //negCliente.agregar(cliente);

            Session["Cliente"] = cliente;

            Response.Redirect("Default.aspx");
        }

        protected void ValidateCheckBox(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerminos.Checked;
        }
    }
}