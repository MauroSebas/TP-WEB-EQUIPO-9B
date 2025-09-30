<%@ Page Title="Formulario del cliente" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FormClient.aspx.cs" Inherits="TPWebForms_equipo9B.FormClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/CSS/Vouncher.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form>

        <div class="form-group">
            <label for="inputAddress">DNI</label>
            <input type="number" class="form-control" id="inputAddress" placeholder="DNI">
        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3">
                <label for="validationCustom01">Nombre</label>
                <input type="text" class="form-control" id="validationCustom01" placeholder="Ingresá tu nombre" required="">
            </div>
            <div class="col-md-4 mb-3">
                <label for="validationCustom02">Apellido</label>
                <input type="text" class="form-control" id="validationCustom02" placeholder="Ingresá tu Apellido" required="">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputEmail4">Email</label>
                <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
            </div>
            <div class="form-group col-md-6">
                <label for="inputPassword4">Password</label>
                <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
            </div>
        </div>

        <div class="form-group">
            <label for="inputAddress2">Dirección</label>
            <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Ciudad</label>
                <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-4">
                <label for="inputState">State</label>
                <select id="inputState" class="form-control">
                    <option selected="">Choose...</option>
                    <option>Buenos Aires</option>
                </select>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Participar</button>
    </form>

</asp:Content>
