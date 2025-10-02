<%@ Page Title="Formulario del cliente" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FormClient.aspx.cs" Inherits="TPWebForms_equipo9B.FormClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/CSS/Vouncher.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Formulario de participacion</h1>

    <div class="mb-3">
        <asp:Label ID="lblDni" AssociatedControlID="txtDni" runat="server" CssClass="form-label" Text="DNI"></asp:Label>
        <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Escribe tu DNI..." TextMode="Number" required="true"></asp:TextBox>
    </div>

    <div class="row mb-3">

        <div class="col">
            <asp:Label ID="lblNombre" AssociatedControlID="txtNombre" runat="server" CssClass="form-label" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresá tu nombre" required="true"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblApellido" AssociatedControlID="txtApellido" runat="server" CssClass="form-label" Text="Apellido"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Ingresá tu apellido" required="true"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" CssClass="form-label" Text="E-mail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-mail" TextMode="Email" required="true"></asp:TextBox>
        </div>

    </div>

    <div class="row mb-3">
        <div class="col">
            <asp:Label ID="lblDireccion" AssociatedControlID="txtDireccion" runat="server" CssClass="form-label" Text="Dirección"></asp:Label>
            <asp:TextBox ID="txtDireccion" CssClass="form-control" placeholder="Apartment, studio, or floor" runat="server"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblCiudad" AssociatedControlID="txtCiudad" runat="server" CssClass="form-label" Text="Ciudad"></asp:Label>
            <asp:TextBox ID="txtCiudad" CssClass="form-control" placeholder="Apartamento, estudio, o piso" runat="server"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblCp" AssociatedControlID="txtCp" runat="server" CssClass="form-label" Text="Código Postal"></asp:Label>
            <asp:TextBox ID="txtCp" CssClass="form-control" placeholder="Código Postal" runat="server" TextMode="Number"></asp:TextBox>
        </div>
    </div>

<div>
    <asp:CheckBox ID="chkTerminos" runat="server"/>
    <asp:Label ID="lblTerminos" AssociatedControlID="chkTerminos" runat="server" CssClass="form-check-label" Text="Términos y condiciones"></asp:Label>
</div>

    <asp:Button ID="ButtonSubmit" runat="server" CssClass="btn btn-primary mt-3" Text="Participá!" OnClick="ButtonSubmit_Click" />
</asp:Content>
