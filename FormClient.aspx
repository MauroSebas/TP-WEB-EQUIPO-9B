<%@ Page Title="Formulario del cliente" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FormClient.aspx.cs" Inherits="TPWebForms_equipo9B.FormClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/CSS/Vouncher.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1 class="text-center mt-3 mb-4" style="color: var(--violeta-principal); font-size: 2.3rem; font-weight: 600;">Formulario de participación</h1>

<div class="mb-3">
    <asp:Label ID="lblDni" AssociatedControlID="txtDni" runat="server" CssClass="form-label" Text="DNI"></asp:Label>
    <asp:TextBox ID="txtDni" runat="server" CssClass="form-control textbox-app mb-2" placeholder="Escribe tu DNI..."></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ErrorMessage="El DNI es obligatorio." ForeColor="Red" Font-Bold="true" />
    <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" ErrorMessage="DNI inválido. Debe contener solo números y tener 8 dígitos." ForeColor="Red" Font-Bold="true" ValidationExpression="^\d{8}$" />
</div>

<div class="row mb-3">
    <div class="col">
        <asp:Label ID="lblNombre" AssociatedControlID="txtNombre" runat="server" CssClass="form-label" Text="Nombre"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control textbox-app mb-2" placeholder="Ingresá tu nombre"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio." ForeColor="Red" Font-Bold="true" />
        <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre inválido. Debe tener al menos 3 letras." ForeColor="Red" Font-Bold="true" ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúÑñ ]{3,50}$" />
    </div>

    <div class="col">
        <asp:Label ID="lblApellido" AssociatedControlID="txtApellido" runat="server" CssClass="form-label" Text="Apellido"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control textbox-app mb-2" placeholder="Ingresá tu apellido"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="El apellido es obligatorio." ForeColor="Red" Font-Bold="true" />
        <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Apellido inválido. Debe tener al menos 3 letras." ForeColor="Red" Font-Bold="true" ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúÑñ ]{3,50}$" />
    </div>

    <div class="col">
        <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" CssClass="form-label" Text="E-mail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control textbox-app mb-2" placeholder="E-mail"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email es obligatorio." ForeColor="Red" Font-Bold="true" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email inválido." ForeColor="Red" Font-Bold="true" ValidationExpression="^[^\s@]+@[^\s@]+\.[^\s@]+$" />
    </div>
</div>

<div class="row mb-3">
    <div class="col">
        <asp:Label ID="lblDireccion" AssociatedControlID="txtDireccion" runat="server" CssClass="form-label" Text="Dirección"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control textbox-app mb-2" placeholder="Dirección"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="La dirección es obligatoria." ForeColor="Red" Font-Bold="true" />
        <asp:RegularExpressionValidator ID="revDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Dirección inválida. Mínimo 3 caracteres." ForeColor="Red" Font-Bold="true" ValidationExpression="^.{3,100}$" />
    </div>

    <div class="col">
        <asp:Label ID="lblCiudad" AssociatedControlID="txtCiudad" runat="server" CssClass="form-label" Text="Ciudad"></asp:Label>
        <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control textbox-app mb-2" placeholder="Ciudad"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCiudad" runat="server" ControlToValidate="txtCiudad" ErrorMessage="La ciudad es obligatoria." ForeColor="Red" Font-Bold="true" />
        <asp:RegularExpressionValidator ID="revCiudad" runat="server" ControlToValidate="txtCiudad" ErrorMessage="Ciudad inválida. Mínimo 4 letras." ForeColor="Red" Font-Bold="true" ValidationExpression="^[A-Za-zÁÉÍÓÚáéíóúÑñ ]{4,50}$" />
    </div>

    <div class="col">
        <asp:Label ID="lblCp" AssociatedControlID="txtCp" runat="server" CssClass="form-label" Text="Código Postal"></asp:Label>
        <asp:TextBox ID="txtCp" runat="server" CssClass="form-control textbox-app mb-2" placeholder="Código Postal"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCp" runat="server" ControlToValidate="txtCp" ErrorMessage="El código postal es obligatorio." ForeColor="Red" Font-Bold="true" />
        <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCp" ErrorMessage="Código postal inválido. Debe tener 4 a 6 números." ForeColor="Red" Font-Bold="true" ValidationExpression="^\d{4,6}$" />
    </div>
</div>

<div>
    <asp:CheckBox ID="chkTerminos" runat="server" />
    <asp:Label ID="lblTerminos" AssociatedControlID="chkTerminos" runat="server" CssClass="form-check-label" Text="Términos y condiciones"></asp:Label>
    <asp:CustomValidator ID="cvCheckBox" runat="server" ForeColor="Red" Font-Bold="true" ErrorMessage="Debes aceptar los términos y condiciones." OnServerValidate="ValidateCheckBox" Display="Dynamic" />
</div>

<asp:Button ID="ButtonSubmit" runat="server" CssClass="btn input-mi-color mt-2" Text="Participá!" OnClick="ButtonSubmit_Click" />
<div class="modal fade" id="modalVoucherExito" tabindex="-1" role="dialog" aria-labelledby="modalTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="background-color: #ffffff; color: #000000;">

     
      <div class="modal-header" style="background-color: #ffffff; color: #000000; border-bottom: none;">
        <h5 class="modal-title" id="modalTitle">¡Éxito!</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
      </div>

     
      <div class="modal-body" style="background-color: #ffffff; color: #000000; text-align: center; font-weight: 500;">
        ¡El voucher se ha canjeado correctamente! 
      </div>

      
      <div class="modal-footer" style="background-color: #ffffff; justify-content: center; border-top: none;">
        <button type="button" class="btn" style="
            background-color: #5d0ec0; 
            color: #ffffff; 
            font-weight: 600; 
            padding: 0.6rem 2rem; 
            border-radius: 5px;
            transition: all 0.2s ease;
        " 
        onmouseover="this.style.backgroundColor='#4a0b90';" 
        onmouseout="this.style.backgroundColor='#5d0ec0';"
        data-bs-dismiss="modal">
          Aceptar
        </button>
      </div>

    </div>
  </div>
</div>


</asp:Content>
