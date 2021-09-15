<%@ Page Title="" Language="C#" MasterPageFile="~/YaMaquetado/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProductos.aspx.cs" Inherits="Vistas.YaMaquetado.AdminProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col"></div>
        <div class="col login">
        <h1 class="h3 mb-3 fw-normal text-center">Presupuestos solicitados</h1>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Cod_Art_Pro" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                        <AlternatingItemTemplate>
                            <td runat="server" style="background-color: #FFFFFF;color: #284775;">Cod_Art_Pro:
                                <asp:DynamicControl runat="server" DataField="Cod_Art_Pro" Mode="ReadOnly" />
                                <br />
                                PU_Pro:
                                <asp:DynamicControl runat="server" DataField="PU_Pro" Mode="ReadOnly" />
                                <br />
                                Stock:
                                <asp:DynamicControl runat="server" DataField="Stock" Mode="ReadOnly" />
                                <br />
                                Categoria:
                                <asp:DynamicControl runat="server" DataField="Categoria" Mode="ReadOnly" />
                                <br />
                                Descripcion:
                                <asp:DynamicControl runat="server" DataField="Descripcion" Mode="ReadOnly" />
                                <br />
                            </td>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <td runat="server" style="background-color: #999999;">Cod_Art_Pro:
                                <asp:DynamicControl runat="server" DataField="Cod_Art_Pro" Mode="ReadOnly" />
                                <br />
                                PU_Pro:
                                <asp:DynamicControl runat="server" DataField="PU_Pro" Mode="Edit" />
                                <br />
                                Stock:
                                <asp:DynamicControl runat="server" DataField="Stock" Mode="Edit" />
                                <br />
                                Categoria:
                                <asp:DynamicControl runat="server" DataField="Categoria" Mode="Edit" />
                                <br />
                                Descripcion:
                                <asp:DynamicControl runat="server" DataField="Descripcion" Mode="Edit" />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                            </td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No se han devuelto datos.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">Cod_Art_Pro:
                                <asp:DynamicControl runat="server" DataField="Cod_Art_Pro" Mode="Insert" ValidationGroup="Insert" />
                                <br />
                                PU_Pro:
                                <asp:DynamicControl runat="server" DataField="PU_Pro" Mode="Insert" ValidationGroup="Insert" />
                                <br />
                                Stock:
                                <asp:DynamicControl runat="server" DataField="Stock" Mode="Insert" ValidationGroup="Insert" />
                                <br />
                                Categoria:
                                <asp:DynamicControl runat="server" DataField="Categoria" Mode="Insert" ValidationGroup="Insert" />
                                <br />
                                Descripcion:
                                <asp:DynamicControl runat="server" DataField="Descripcion" Mode="Insert" ValidationGroup="Insert" />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" ValidationGroup="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                            </td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" style="background-color: #E0FFFF;color: #333333;">Cod_Art_Pro:
                                <asp:DynamicControl runat="server" DataField="Cod_Art_Pro" Mode="ReadOnly" />
                                <br />
                                PU_Pro:
                                <asp:DynamicControl runat="server" DataField="PU_Pro" Mode="ReadOnly" />
                                <br />
                                Stock:
                                <asp:DynamicControl runat="server" DataField="Stock" Mode="ReadOnly" />
                                <br />
                                Categoria:
                                <asp:DynamicControl runat="server" DataField="Categoria" Mode="ReadOnly" />
                                <br />
                                Descripcion:
                                <asp:DynamicControl runat="server" DataField="Descripcion" Mode="ReadOnly" />
                                <br />
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" id="itemPlaceholderContainer">
                                    <td runat="server" id="itemPlaceholder">
                                    </td>
                                </tr>
                            </table>
                            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">Cod_Art_Pro:
                                <asp:DynamicControl runat="server" DataField="Cod_Art_Pro" Mode="ReadOnly" />
                                <br />
                                PU_Pro:
                                <asp:DynamicControl runat="server" DataField="PU_Pro" Mode="ReadOnly" />
                                <br />
                                Stock:
                                <asp:DynamicControl runat="server" DataField="Stock" Mode="ReadOnly" />
                                <br />
                                Categoria:
                                <asp:DynamicControl runat="server" DataField="Categoria" Mode="ReadOnly" />
                                <br />
                                Descripcion:
                                <asp:DynamicControl runat="server" DataField="Descripcion" Mode="ReadOnly" />
                                <br />
                            </td>
                        </SelectedItemTemplate>
                    </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT * FROM [Productos]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </div>
        <div class="col"></div>
    </div>
</asp:Content>
