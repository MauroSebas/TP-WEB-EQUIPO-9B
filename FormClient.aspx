<%@ Page Title="Formulario del cliente" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FormClient.aspx.cs" Inherits="TPWebForms_equipo9B.FormClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/CSS/Vouncher.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mb-3">
        <label for="inputDni" class="form-label">DNI</label>
        <input type="number" class="form-control" id="inputDni" placeholder="DNI">
    </div>

    <div class="row mb-3">
        <div class="col">
            <label for="inputNombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="inputNombre" placeholder="Ingresá tu nombre" required>
        </div>
        <div class="col">
            <label for="inputApellido" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="inputApellido" placeholder="Ingresá tu apellido" required>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col">
            <label for="inputEmail" class="form-label">Email</label>
            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
        </div>
        <div class="col">
            <label for="inputPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="inputPassword" placeholder="Password">
        </div>
    </div>

    <div class="mb-3">
        <label for="inputDireccion" class="form-label">Dirección</label>
        <input type="text" class="form-control" id="inputDireccion" placeholder="Apartment, studio, or floor">
    </div>

    <div class="row mb-3">
        <div class="col">
            <label for="inputCiudad" class="form-label">Ciudad</label>
            <input type="text" class="form-control" id="inputCiudad">
        </div>
        <div class="col">
            <label for="inputState" class="form-label">Provincia</label>
            <select id="inputState" class="form-select">
                <option selected>Choose...</option>
                <option>Buenos Aires</option>
            </select>
        </div>
    </div>

    <button type="submit" class="btn btn-primary">Sign in</button>

</asp:Content>
