using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using capaEntidades;
using capaNegocios;

namespace webBodegas.Formularios
{
    public partial class frmMateriasPrimas : System.Web.UI.Page
    {
        private MateriasPrimas mat;
        private MateriasPrimasDLL matDLL = new MateriasPrimasDLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myScript", javascript.BloquearMouse());
                //txtFecha.Text = DateTime.Now.ToString("yyyy/MM/dd");
                //btnReporte.Attributes.Add("onclick", javascript.AbrirVentana("rptUsuUsuarios.aspx", ""));
                //LLenarAreas();
                //LLenarEstados();
                LLenarGrilla();
            }
            txtCodigo.Focus();
        }

        protected void btnNuevo_Click(object sender, ImageClickEventArgs e)
        {
            txtCodigo.Text = "";
            txtDescripcion.Text = "";
            lblStock.Text = "0";
            txtCodigo.Focus();
        }

        protected void btnGuardar_Click(object sender, ImageClickEventArgs e)
        {
            if (this.IsValid)
            {
                mat = new MateriasPrimas();
                mat.Codigo = long.Parse(txtCodigo.Text.Trim());
                mat.Descripcion = txtDescripcion.Text.Trim();

                matDLL.Guardar(mat);
                LLenarGrilla();
                txtCodigo.Text = "";
                txtDescripcion.Text = "";
                lblStock.Text = "0";
                txtCodigo.Focus();

            }
        }

        private void LLenarGrilla()
        {
            Grid.DataSource = matDLL.MateriasPrimasTodasDS();
            Grid.DataBind();
        }

        protected void Grid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow fila = Grid.Rows[index];
            TableCell tabla = fila.Cells[2];
            string cCodigo = tabla.Text.Trim();

            if (e.CommandName == "btnBuscar")
                Buscar(cCodigo);
            else if (e.CommandName == "btnEliminar")
                Eliminar(cCodigo);
        }


        private void Buscar(string pCodigo)
        {
            mat = new MateriasPrimas();
            mat = matDLL.BuscarMateriasPrimas(pCodigo);
            txtCodigo.Text = mat.Codigo.ToString();
            txtDescripcion.Text = mat.Descripcion;
            lblStock.Text = mat.Stock.ToString();
        }

        private void Eliminar(string pCodigo)
        {
            matDLL.Eliminar(pCodigo);
            LLenarGrilla();
        }

        protected void Grid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grid.PageIndex = e.NewPageIndex;
            LLenarGrilla();
        }
    }
}