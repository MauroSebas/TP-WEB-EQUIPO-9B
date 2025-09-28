<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionArticulo.aspx.cs" Inherits="TPWebForms_equipo9B.SeleccionArticulo" %>
<%@ Import Namespace="Dominio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-4">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
            <asp:Repeater ID="rptArticulos" runat="server">
                <ItemTemplate>
                    <div class="col">
                        <div class="card h-100 shadow-sm border-0 rounded-4 overflow-hidden hover-scale">
                            <div class="card-img-top d-flex align-items-center justify-content-center" style="height: 250px;">
                                <%--<img src='<%# Eval("PrimeraImagenUrl") %>' class="img-fluid" alt='<%# Eval("nombre") %>' style="object-fit: contain; max-height: 100%; max-width: 100%;">--%>
                            </div>
                            <div class="card-body d-flex flex-column align-items-center text-center">
                                <h5 class="card-title"><%# Eval("nombre") %></h5>
                                <p class="card-text text-wrap mb-3"><%# Eval("descripcion") %></p>
                                <p class="card-text mt-auto fw-bold fs-5"><%# Eval("PrecioFormateado") %></p>

                                <asp:Button ID="btnSeleccionar" runat="server" Text="Canjear ahora"
                                    CommandArgument='<%# Eval("id") %>' OnCommand="SeleccionarArticulo"
                                    CssClass="btn input-mi-color mt-2" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
