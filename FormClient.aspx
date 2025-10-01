<%@ Page Title="Formulario del cliente" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FormClient.aspx.cs" Inherits="TPWebForms_equipo9B.FormClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/CSS/Vouncher.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mb-3">
        <asp:Label ID="lblDni" AssociatedControlID="txtDni" runat="server" CssClass="form-label" Text="DNI"></asp:Label>
        <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Escribe tu DNI..." TextMode="Number" required="true"></asp:TextBox>
    </div>

    <div class="row mb-3">

        <div class="col">
            <asp:Label ID="lblNombre" AssociatedControlID="inputNombre" runat="server" CssClass="form-label" Text="Nombre"></asp:Label>
            <asp:TextBox ID="inputNombre" runat="server" CssClass="form-control" placeholder="Ingresá tu nombre" required="true"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblApellido" AssociatedControlID="inputApellido" runat="server" CssClass="form-label" Text="Apellido"></asp:Label>
            <asp:TextBox ID="inputApellido" runat="server" CssClass="form-control" placeholder="Ingresá tu apellido" required="true"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblEmail" AssociatedControlID="inputEmail" runat="server" CssClass="form-label" Text="E-mail"></asp:Label>
            <asp:TextBox ID="inputEmail" runat="server" CssClass="form-control" placeholder="E-mail" TextMode="Email" required="true"></asp:TextBox>
        </div>

    </div>

    <div class="row mb-3">
        <div class="col">
            <asp:Label ID="lblDireccion" AssociatedControlID="inputDireccion" runat="server" CssClass="form-label" Text="Dirección"></asp:Label>
            <asp:TextBox ID="inputDireccion" CssClass="form-control" placeholder="Apartment, studio, or floor" runat="server"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblCiudad" AssociatedControlID="inputCiudad" runat="server" CssClass="form-label" Text="Ciudad"></asp:Label>
            <asp:TextBox ID="inputCiudad" CssClass="form-control" placeholder="Apartamento, estudio, o piso" runat="server"></asp:TextBox>
        </div>

        <div class="col">
            <asp:Label ID="lblCp" AssociatedControlID="inputCp" runat="server" CssClass="form-label" Text="Código Postal"></asp:Label>
            <asp:TextBox ID="inputCp" CssClass="form-control" placeholder="Código Postal" runat="server" TextMode="Number"></asp:TextBox>
        </div>
    </div>

<div>
    <asp:CheckBox ID="chkTerminos" runat="server"/>
    <asp:Label ID="lblTerminos" AssociatedControlID="chkTerminos" runat="server" CssClass="form-check-label" Text="Términos y condiciones"></asp:Label>
</div>

    <asp:Button ID="ButtonSubmit" runat="server" CssClass="btn btn-primary mt-3" Text="Participá!" />
</asp:Content>
