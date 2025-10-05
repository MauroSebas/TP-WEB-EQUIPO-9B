<%@ Page Title="Detalle de Articulo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPWebForms_equipo9B.DetalleArticulo" %>

<%@ Import Namespace="Dominio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="d-flex justify-content-center mt-5">
        <div class="card card-color-borde" style="width: 24rem;">
            <div id="carousel_<%= ArticuloSeleccionado.id %>" class="carousel slide" data-bs-ride="false">
                <div class="carousel-indicators">
                    <% for (int i = 0; i < ArticuloSeleccionado.Imagenes.Count; i++)
                       { 
                        %>

                        <button type="button"
                            data-bs-target="#carousel_<%= ArticuloSeleccionado.id %>"
                            data-bs-slide-to="<%= i %>"
                            class="<%= i == 0 ? "active" : "" %>"
                            aria-label="Slide <%= i + 1 %>"
                            <%= i == 0 ? "aria-current='true'" : "" %>>
                        </button>
                    <% }
                        %>
                </div>

                <div class="carousel-inner">
                    <% for (int i = 0; i < ArticuloSeleccionado.Imagenes.Count; i++)
                        { %>
                            <div class="carousel-item <%= i == 0 ? "active" : "" %>">
                                <img src="<%= ArticuloSeleccionado.Imagenes[i].imageUrl %>" class="d-block w-100" style="object-fit: contain; height: 250px;" />
                            </div>
                    <% } %>
                </div>

                <% if (ArticuloSeleccionado.Imagenes.Count > 1)
                   {
                    %>
                    <button class="carousel-control-prev" type="button"
                        data-bs-target="#carousel_<%= ArticuloSeleccionado.id %>"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon " aria-hidden="true"></span>
                        <span class="visually-hidden ">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button"
                        data-bs-target="#carousel_<%= ArticuloSeleccionado.id %>"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>

                <% }
                     %>
            </div>

            <div class="card-body text-center">
                <h5 class="card-title"><%= ArticuloSeleccionado.nombre %></h5>
                <p class="card-text"><%= ArticuloSeleccionado.descripcion %></p>
            </div>

            <ul class="list-group text-center">
               <li class="list-group-item">Precio: <%= ArticuloSeleccionado.PrecioFormateado %></li>

                <li id="li-marca" class="list-group-item">Marca: <%= ArticuloSeleccionado.marca.descripcion %></li>
                <li class="list-group-item">Categoría: <%= ArticuloSeleccionado.categoria.descripcion %></li>
            </ul>

            <div class="card-body text-center">
                <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn input-mi-color mt-2" OnClick="btnVolver_Click" />
            </div>
        </div>
    </div>


</asp:Content>




