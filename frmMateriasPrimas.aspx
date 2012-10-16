<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="frmMateriasPrimas.aspx.cs" Inherits="webBodegas.Formularios.frmMateriasPrimas" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 12px;
    }
    .style3
    {
        width: 119px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" 
                        Text="MATERIAS PRIMAS"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="btnNuevo" runat="server" 
                        ImageUrl="~/Imagenes/btnnuevo.PNG" CausesValidation="False" 
                        onclick="btnNuevo_Click" />
                    <asp:ImageButton ID="btnGuardar" runat="server" 
                        ImageUrl="~/Imagenes/btnguardar.PNG" onclick="btnGuardar_Click" />
                    <asp:ConfirmButtonExtender ID="btnGuardar_ConfirmButtonExtender" runat="server" 
                        ConfirmOnFormSubmit="True" ConfirmText="Desea guardar los datos" Enabled="True" 
                        TargetControlID="btnGuardar">
                    </asp:ConfirmButtonExtender>
                </td>
            </tr>
        </table>
        <hr />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Item1.png" />
                </td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="CODIGO"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valcod" runat="server" 
                        ControlToValidate="txtCodigo" Display="None" ErrorMessage="Ingrese el codigo"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="valcod_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="valcod">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagenes/Item1.png" />
                </td>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="DESCRIPCION"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valdes" runat="server" 
                        ControlToValidate="txtDescripcion" Display="None" 
                        ErrorMessage="Ingrese la descripcion"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="valdes_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="valdes">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="STOCK"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblStock" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <hr />
        <asp:GridView ID="Grid" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcommand="Grid_RowCommand" PageSize="6" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Image" CommandName="btnBuscar" 
                    ImageUrl="~/Imagenes/btnbuscar.PNG" Text="Botón">
                <ControlStyle Height="20px" />
                <HeaderStyle Width="20px" />
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Image" CommandName="btnEliminar" 
                    ImageUrl="~/Imagenes/btnEliminar.png" Text="Botón">
                <ControlStyle Height="20px" />
                <HeaderStyle Width="20px" />
                </asp:ButtonField>
                <asp:BoundField DataField="codigo" HeaderText="CODIGO" />
                <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
<br />
<br />
        <br />
    </ContentTemplate>
    <Triggers> 
        <asp:PostBackTrigger ControlID="btnGuardar" /> 
        </Triggers>
      </asp:UpdatePanel>
</asp:UpdatePanel>
</asp:Content>
