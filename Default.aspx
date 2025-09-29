<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebForms_equipo9B.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/CSS/Vouncher.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <div class="d-flex justify-content-center align-items-center ">
        <div class="card shadow-lg mx-auto overflow-hidden custom-card custom-card">

            <!-- Banner superior -->
            <div class="p-4 text-center" style="background: #5d0ec0;">
                <h2 id="tituloVoucher"
                    class="titulo-violeta titulo-voucher-anim">Intercambiar Voucher
                </h2>
                <small class="text-white d-block mt-2 sub-titulo" id="subTituloVoucher">¡Ingresa tu código para recibir tu descuento!
                </small>
            </div>

            <div class="p-4">

                <!-- UpdatePanel -->
                <asp:UpdatePanel ID="UpdatePanelVoucher" runat="server">
                    <ContentTemplate>

                        <!-- Mensaje de feedback -->
                        <asp:Label ID="lblMensaje" runat="server" CssClass="d-block text-center text-danger mb-3 fw-bold " Text=""></asp:Label>

                        <!-- Input voucher -->
                        <div class="justify-content-center mb-3">
                            <asp:TextBox
                                ID="txtVoucher"
                                runat="server"
                                Placeholder="Ingresa tu código de voucher"
                                CssClass="form-control textbox-app"></asp:TextBox>
                        </div>
                        <small class="d-block text-center mb-4 text-secondary mt-2">Recibiste este código con tu compra.
                        </small>

                        <!-- Botón -->
                        <div class="d-flex justify-content-center mb-3">
                            <asp:Button
                                ID="btnIntercambiar"
                                runat="server"
                                Text="Canjear"
                                OnClick="btnIntercambiar_Click"
                                CssClass="input-mi-color" />
                        </div>

                    </ContentTemplate>
                    
                </asp:UpdatePanel>
                <!-- Separador -->
                <hr class="hr-stile" id="hrSeparator">

                <!-- Nota adicional -->
                <p class="text-center text-secondary mt-2" id="notaFinal">
                    Verifica tu código antes de continuar.
                </p>
            </div>
        </div>
    </div>

    <script src="Content/JS/animaciones.js"></script>
</asp:Content>
