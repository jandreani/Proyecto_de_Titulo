<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios/Site.Master" AutoEventWireup="true" CodeBehind="frmInventario.aspx.cs" Inherits="webBodegas.Formularios.frmInventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
                    Text="INVENTARIO"></asp:Label>
            </td>
        </tr>
    </table>
</p>
    <hr />
    <p>
    <br />
</p>
<p>
</p>
</asp:Content>
