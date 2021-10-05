﻿<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProductos.aspx.cs" Inherits="Vistas.YaMaquetado.AdminProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Editar Productos.</h1>
            <p class="h3 mb-3 fw-normal text-center">
                <asp:GridView ID="grdProdAdmin" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanging="grdProdAdmin_SelectedIndexChanging">
                    <Columns>
                        <asp:TemplateField HeaderText="Codigo_Articulo">
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_CodigoArticulo" runat="server" Text='<%# Bind("Cod_Art_Pro") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio_Unitario">
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_PrecioUnitario" runat="server" Text='<%# Bind("PU_Pro") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Stock">
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_Stock" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Categoria">
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_Categoria" runat="server" Text='<%# Bind("Categoria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descripcion">
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_Descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="URL_Imagen">
                            <ItemTemplate>
                                <asp:Label ID="lbl_it_URL" runat="server" Text='<%# Bind("Url") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </p>
            <p class="h3 mb-3 fw-normal text-center">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </p>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
