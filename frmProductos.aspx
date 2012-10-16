<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="frmProductos.aspx.cs" Inherits="webBodegas.Formularios.frmProductos" %>
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
            width: 101px;
        }
        .style4
        {
            width: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
                    Text="PRODUCTOS"></asp:Label>
            </td>
        </tr>
    </table>
</p>
    <hr />


            <table class="style1" __designer:mapid="b">
                <tr __designer:mapid="c">
                    <td __designer:mapid="d">
                        <asp:ImageButton ID="btnnuevo" runat="server" 
                            ImageUrl="~/Imagenes/btnnuevo.PNG" />
                        <asp:ImageButton ID="btnguardar" runat="server" 
                            ImageUrl="~/Imagenes/btnguardar.PNG" />
                    </td>
                </tr>
            </table>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
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
                                <asp:TextBox ID="txtdescripcion" runat="server" Width="200px"></asp:TextBox>
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
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label4" runat="server" Text="ARTICULO"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label5" runat="server" Text="CANTIDAD"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/Imagenes/btnmas.png" />
                                &nbsp;
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/Imagenes/btnmenos.png" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ContentTemplate>
    </asp:UpdatePanel>
    <p>
    <br />
</p>
<p>
</p>
</asp:Content>
