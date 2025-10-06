using Dominio;
using Negocio;
using System;
using System.Text.RegularExpressions;
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
                Cliente cliente = Session["Cliente"] as Cliente;
                if (cliente != null)
                    CargarDatosEnFormulario(cliente);
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            string email = txtEmail.Text.Trim();
            string direccion = txtDireccion.Text.Trim();
            string ciudad = txtCiudad.Text.Trim();
            string cp = txtCp.Text.Trim();

            if (!ValidarFormulario(dni, nombre, apellido, email, direccion, ciudad, cp)) return;

            ClienteNegocio clienteNeg = new ClienteNegocio();
            EmailService emailService = new EmailService();
            Articulo articulo = Session["Articulo"] as Articulo;
            Vouncher voucher = Session["Voucher"] as Vouncher;

            Cliente cliente = clienteNeg.obtenerPorDni(dni);
            if (cliente == null)
            {
                cliente = new Cliente()
                {
                    Documento = dni,
                    Nombre = nombre,
                    Apellido = apellido,
                    Email = email,
                    Direccion = direccion,
                    Ciudad = ciudad,
                    CP = int.Parse(cp)
                };
                clienteNeg.agregar(cliente);
            }

            if (articulo != null && voucher != null && voucher.SePuedeCanjear)
            {
                VoucherNegocio voucherNeg = new VoucherNegocio();
                try
                {
                    voucherNeg.CanjearVoucher(voucher.CodigoVoucher, cliente.Id, articulo.id);
                    voucher.FechaCanje = DateTime.Now;

                    if (articulo.Imagenes != null && articulo.Imagenes.Count > 0)
                    {
                        emailService.armarCorreo(cliente.Email, articulo.nombre, articulo.Imagenes[0].imageUrl);
                        emailService.enviarEmail();
                    }
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('{ex.Message}');", true);
                    return;
                }
            }

            string script = @"
                window.addEventListener('load', function() {
                    var modalEl = document.getElementById('modalVoucherExito');
                    var modal = new bootstrap.Modal(modalEl);
                    modal.show();
                    modalEl.addEventListener('hidden.bs.modal', function () {
                        window.location.href = 'Default.aspx';
                    });
                });
            ";
            ScriptManager.RegisterStartupScript(this, GetType(), "modalExito", script, true);
        }


        private void CargarDatosEnFormulario(Cliente cliente)
        {
            txtDni.Text = cliente.Documento;
            txtNombre.Text = cliente.Nombre;
            txtApellido.Text = cliente.Apellido;
            txtEmail.Text = cliente.Email;
            txtDireccion.Text = cliente.Direccion;
            txtCiudad.Text = cliente.Ciudad;
            txtCp.Text = cliente.CP.ToString();
        }

        private bool ValidarFormulario(string dni, string nombre, string apellido, string email, string direccion, string ciudad, string cp)
        {
            bool isValid = true;

            if (!Regex.IsMatch(dni, @"^\d{8}$")) { rfvDni.ErrorMessage = "DNI inválido. Debe tener 8 números."; isValid = false; }
            if (!Regex.IsMatch(nombre, @"^[A-Za-zÁÉÍÓÚáéíóúÑñ ]{3,50}$")) { rfvNombre.ErrorMessage = "Nombre inválido."; isValid = false; }
            if (!Regex.IsMatch(apellido, @"^[A-Za-zÁÉÍÓÚáéíóúÑñ ]{3,50}$")) { rfvApellido.ErrorMessage = "Apellido inválido."; isValid = false; }
            if (!Regex.IsMatch(email, @"^[^\s@]+@[^\s@]+\.[^\s@]+$")) { rfvEmail.ErrorMessage = "Email inválido."; isValid = false; }
            if (direccion.Length < 3 || direccion.Length > 100) { rfvDireccion.ErrorMessage = "Dirección inválida."; isValid = false; }
            if (!Regex.IsMatch(ciudad, @"^[A-Za-zÁÉÍÓÚáéíóúÑñ ]{4,50}$")) { rfvCiudad.ErrorMessage = "Ciudad inválida."; isValid = false; }
            if (!Regex.IsMatch(cp, @"^\d{4,6}$")) { rfvCp.ErrorMessage = "Código postal inválido."; isValid = false; }
            if (!chkTerminos.Checked) { cvCheckBox.ErrorMessage = "Debes aceptar los términos y condiciones."; isValid = false; }

            return isValid;
        }

        protected void ValidateCheckBox(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerminos.Checked;
        }
    }
}
