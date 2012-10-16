using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using capaNegocios;
using capaEntidades;


namespace webBodegas.Formularios
{
    public partial class frmBodegas : System.Web.UI.Page
    {
        private Bodegas bod;
        private BodegasDLL bodDLL = new BodegasDLL();

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
            txtcodigo.Focus();
        }

        protected void Grid_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
           
        }

        private void LLenarGrilla()
        {
            Grid.DataSource = bodDLL.BodegasTodasDS();
            Grid.DataBind();
        }

        protected void Grid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow fila = Grid.Rows[index];
            TableCell tabla = fila.Cells[2];
            string cCodigo = tabla.Text.Trim();

            if (e.CommandName == "btnBuscar")
                BuscarBodega(cCodigo);
            else if (e.CommandName == "btnEliminar")
                EliminarBodega(cCodigo);


        }

        protected void btnnuevo_Click(object sender, ImageClickEventArgs e)
        {
            txtcodigo.Text = "";
            txtdescripcion.Text = "";
            txtcodigo.Focus();
        }

        private void BuscarBodega(string pCodigo)
        {
            bod = new Bodegas();
            bod = bodDLL.BuscarBodega(pCodigo);
            txtcodigo.Text = bod.Codigo.ToString();
            txtdescripcion.Text = bod.Descripcion;
        }

        private void EliminarBodega(string pCodigo)
        {
            bodDLL.Eliminar(pCodigo);
            LLenarGrilla();
        }

        protected void Grid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grid.PageIndex = e.NewPageIndex;
            LLenarGrilla();
        }

        protected void btnguardar_Click(object sender, ImageClickEventArgs e)
        {
            if (this.IsValid)
            {
                bod = new Bodegas();
                bod.Codigo = long.Parse(txtcodigo.Text.Trim());
                bod.Descripcion = txtdescripcion.Text.Trim();

                bodDLL.Guardar(bod);
                LLenarGrilla();
                txtcodigo.Text = "";
                txtdescripcion.Text = "";
                txtcodigo.Focus();
            }
        }
    }
}