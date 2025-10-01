<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPWebForms_equipo9B.DetalleArticulo" %>

<%@ Import Namespace="Dominio" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1><%:ArticuloSeleccionado %> </h1>


<%--    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
                <div id="carousel_<%= ArticuloSelecci %>" class="carousel slide h-100" data-bs-ride="carousel">
                    <div class="carousel-inner h-100">
                        <% for (int i = 0; i < articulo.Imagenes.Count; i++)
                                                { %>
                        <div class="carousel-item <%= i == 0 ? "active" : "" %> h-100">
                            <img src="<%= articulo.Imagenes[i].imageUrl %>"
                                class="d-block w-100 h-100"
                                style="object-fit: contain;"
                                alt="<%= articulo.nombre %>">
                        </div>
                        <% } %>
                    </div>

                    <% if (articulo.Imagenes.Count > 1)
                                            { %>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carousel_<%= articulo.id %>" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carousel_<%= articulo.id %>" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>
                    <% } %>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            </div>
        </div>
    </div>
    </div>--%>

</asp:Content>




