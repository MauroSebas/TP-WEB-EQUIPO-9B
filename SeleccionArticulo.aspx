<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionArticulo.aspx.cs" Inherits="TPWebForms_equipo9B.SeleccionArticulo" %>

<%@ Import Namespace="Dominio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-4">
        <h1 class="text-center mt-3 mb-4">
            <span style="color: var(--violeta-principal); font-size: 2.3rem; font-weight: 600; text-transform: none;">
                Elegí tu Premio
            </span>
        </h1>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

            <asp:Repeater ID="RepeaterCards" runat="server">
                <ItemTemplate>
                    <div class="col">
                        <div class="card h-100 shadow-sm border-0 rounded-4 overflow-hidden hover-scale">
                            <img src="<%#Eval("PrimeraImagenUrl") %>" class="card-img-top" style="height: 200px; object-fit: contain">
                            <div class="card-body d-flex flex-column align-items-center text-center">
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <a href="DetalleArticulo.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                                <p class="card-text text-wrap mb-3"></p>
                                <p class="card-text mt-auto fw-bold fs-5"></p>
                                <asp:Button ID="btnSeleccionArticulo" runat="server" Text="Seleccionar" CssClass="btn input-mi-color mt-2"
                                     CommandName="ArticuloId" CommandArgument='<%#Eval("Id") %>' Onclick="btnSeleccionArticulo_Click" />


            <%
                foreach (Dominio.Articulo articulo in ListaArticulo)
                {
            %>

                    <div class="col">
                        <div class="card h-100 shadow-sm border-0 rounded-4 overflow-hidden hover-scale">
                            <div class="card-img-top" style="height: 250px;">
                                <div id="carousel_<%= articulo.id %>" class="carousel slide h-100" data-bs-ride="carousel">
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


                            <div class="card-body d-flex flex-column align-items-center text-center">
                                <h5 class="card-title"><%: articulo.nombre %></h5>
                                <p class="card-text text-wrap mb-3"><%: articulo.descripcion %></p>
                                <p class="card-text mt-auto fw-bold fs-5"><%: articulo.PrecioFormateado %></p>

                                <asp:Button ID="btnSeleccionar" runat="server" Text="Canjear ahora"
                                    CommandArgument='' OnCommand="SeleccionarArticulo"
                                    CssClass="btn input-mi-color mt-2" />

                            </div>
                        </div>
                    </div>

            <%  }%>
        </div>
    </div>

</asp:Content>

