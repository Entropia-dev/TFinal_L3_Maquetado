<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProductos.aspx.cs" Inherits="Vistas.YaMaquetado.AdminProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Ingresar producto</h1>
            <p class="text-start">ID Producto&nbsp;
                <asp:TextBox ID="txtIdProducto" runat="server"></asp:TextBox>
            </p>
            <p class="text-start">Nombre Producto
                <asp:TextBox ID="txtNombrePro" runat="server"></asp:TextBox>
            </p>
            <p class="text-start">Descripcion
                <asp:TextBox ID="txtDescripcionPro" runat="server"></asp:TextBox>
            </p>
            <p class="text-start">Precio
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            </p>
            <p class="h3 mb-3 fw-normal text-center">
                <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
            </p>
            <p class="h3 mb-3 fw-normal text-center">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </p>
            <p class="h3 mb-3 fw-normal text-center">&nbsp;</p>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT * FROM [Productos]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
