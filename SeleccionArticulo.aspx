<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionArticulo.aspx.cs" Inherits="TPWebForms_equipo9B.SeleccionArticulo" %>

<%@ Import Namespace="Dominio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-4">
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
                                   CommandArgument='<%#Eval("Id")%>' CommandName="ArticuloId" OnClick= "btnSeleccionArticulo_Click"/>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>

