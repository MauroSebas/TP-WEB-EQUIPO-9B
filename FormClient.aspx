<%@ Page Title="Formulario del cliente" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FormClient.aspx.cs" Inherits="TPWebForms_equipo9B.FormClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/CSS/Vouncher.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Formulario de participacion</h1>

    <div class="mb-3">
        <asp:Label ID="lblDni" AssociatedControlID="txtDni" runat="server" CssClass="form-label" Text="DNI"></asp:Label>
        <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Escribe tu DNI..." TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtDni" ID="RequiredFieldValidator1" runat="server" ErrorMessage="El DNI es requerido..."></asp:RequiredFieldValidator>
    </div>

    <div class="row mb-3">

        <div class="col">
            <asp:Label ID="lblNombre" AssociatedControlID="txtNombre" runat="server" CssClass="form-label" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresá tu nombre"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtNombre" ID="RequiredFieldValidator2" runat="server" ErrorMessage="El Nombre es requerido..."></asp:RequiredFieldValidator>
        </div>

        <div class="col">
            <asp:Label ID="lblApellido" AssociatedControlID="txtApellido" runat="server" CssClass="form-label" Text="Apellido"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Ingresá tu apellido"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtApellido" ID="RequiredFieldValidator3" runat="server" ErrorMessage="El Apellido es requerido..."></asp:RequiredFieldValidator>
        </div>

        <div class="col">
            <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" CssClass="form-label" Text="E-mail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-mail" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtEmail" ID="RequiredFieldValidator4" runat="server" ErrorMessage="El Email es requerido..."></asp:RequiredFieldValidator>
        </div>

    </div>

    <div class="row mb-3">
        <div class="col">
            <asp:Label ID="lblDireccion" AssociatedControlID="txtDireccion" runat="server" CssClass="form-label" Text="Dirección"></asp:Label>
            <asp:TextBox ID="txtDireccion" CssClass="form-control" placeholder="Apartment, studio, or floor" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtDireccion" ID="RequiredFieldValidator5" runat="server" ErrorMessage="La Dirección es requerida..."></asp:RequiredFieldValidator>
        </div>

        <div class="col">
            <asp:Label ID="lblCiudad" AssociatedControlID="txtCiudad" runat="server" CssClass="form-label" Text="Ciudad"></asp:Label>
            <asp:TextBox ID="txtCiudad" CssClass="form-control" placeholder="Apartamento, estudio, o piso" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtCiudad" ID="RequiredFieldValidator6" runat="server" ErrorMessage="La Ciudad es requerida..."></asp:RequiredFieldValidator>
        </div>

        <div class="col">
            <asp:Label ID="lblCp" AssociatedControlID="txtCp" runat="server" CssClass="form-label" Text="Código Postal"></asp:Label>
            <asp:TextBox ID="txtCp" CssClass="form-control" placeholder="Código Postal" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtCp" ID="RequiredFieldValidator7" runat="server" ErrorMessage="El código postal es requerido..."></asp:RequiredFieldValidator>
        </div>
    </div>

    <div>
        <asp:CheckBox ID="chkTerminos" runat="server" />
        <asp:Label ID="lblTerminos" AssociatedControlID="chkTerminos" runat="server" CssClass="form-check-label" Text="Términos y condiciones"></asp:Label>
        <asp:CustomValidator ID="cvCheckBox" runat="server" ForeColor="Red" Font-Bold="true" ErrorMessage="Debes aceptar los términos y condiciones." OnServerValidate="ValidateCheckBox" Display="Dynamic" />
    </div>
    <asp:Button ID="ButtonSubmit" runat="server" CssClass="btn btn-primary mt-3" Text="Participá!" OnClick="ButtonSubmit_Click" />
</asp:Content>
