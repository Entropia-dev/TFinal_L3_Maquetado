<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProductos.aspx.cs" Inherits="Vistas.YaMaquetado.AdminProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Editar Productos.</h1>
            <p class="h3 mb-3 fw-normal text-center">
                <asp:GridView ID="grdProdAdmin" runat="server">
                </asp:GridView>
            </p>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
