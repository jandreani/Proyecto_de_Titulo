<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="frmBodegas.aspx.cs" Inherits="webBodegas.Formularios.frmBodegas" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style2
        {
            width: 7px;
        }
        .style3
        {
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
                    Text="BODEGAS"></asp:Label>
                
            </td>
        </tr>
    </table>
</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>


            <table class="style1">
                <tr>
                    <td>
                        <asp:ImageButton ID="btnnuevo" runat="server" 
                            ImageUrl="~/Imagenes/btnnuevo.PNG" CausesValidation="False" 
                            onclick="btnnuevo_Click" />
                        <asp:ImageButton ID="btnguardar" runat="server" 
                            ImageUrl="~/Imagenes/btnguardar.PNG" onclick="btnguardar_Click" />
                        <asp:ConfirmButtonExtender ID="btnguardar_ConfirmButtonExtender" runat="server" 
                            ConfirmOnFormSubmit="True" ConfirmText="desea guardar la bodega" Enabled="True" 
                            TargetControlID="btnguardar">
                        </asp:ConfirmButtonExtender>
                    </td>
                </tr>
            </table>
            <table class="style1">
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Item1.png" />
                    </td>
                    <td class="style3">
                        <asp:Label ID="Label2" runat="server" Text="CODIGO"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcodigo" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valcod" runat="server" 
                            ControlToValidate="txtcodigo" Display="None" ErrorMessage="Ingrese el codigo"></asp:RequiredFieldValidator>
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
                        <asp:Label ID="Label3" runat="server" Text="DESCRIPCION"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdescripcion" runat="server" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valdes" runat="server" 
                            ControlToValidate="txtdescripcion" Display="None" 
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
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
<br />
            <table class="style1">
                <tr>
                    <td>
                        <asp:GridView ID="Grid" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                            GridLines="None" onrowcommand="Grid_RowCommand" 
                            onselectedindexchanging="Grid_SelectedIndexChanging" PageSize="6" 
                            Width="100%" onpageindexchanging="Grid_PageIndexChanging">
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
                                <asp:BoundField HeaderText="CODIGO" DataField="codigo" />
                                <asp:BoundField HeaderText="DESCRIPCION" DataField="descripcion" />
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
                    </td>
                </tr>
            </table>
<br />
<br />
 </ContentTemplate>
        <Triggers> 
        <asp:PostBackTrigger ControlID="btnGuardar" /> 
        </Triggers>
      </asp:UpdatePanel>
   
</asp:Content>
