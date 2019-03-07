using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace Prueba1.Proyecto
{
    public partial class Modificar_Proyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadGrid2_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {

        }

        protected void txt_codigo_TextChanged(object sender, EventArgs e)
        {
            prueba1Entities cnx1 = new prueba1Entities();

            using (cnx1)
            {
                var existe = (from w in cnx1.proyecto
                              where w.codigo_proy == txt_codigo.Text
                              select w).FirstOrDefault();
                if (existe != null)
                {
                    txt_nombre.Text = existe.nombre_proy;
                    txt_objetivo.Text = existe.objetivos;
                    txt_valor.Value = existe.valor_proy;
                    cmb_municipios.SelectedValue = existe.id_municipio.ToString();
                    Session["ID_PROYECTO"] = existe.Id;
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No existe un proyecto con ese código')", true);
                }
            }

        }

        protected void btn_actualizar_Click(object sender, EventArgs e)
        {
            
            prueba1Entities cnx1 = new prueba1Entities();
            proyecto existe = new proyecto();
            int id_proyecto = Convert.ToInt32(Session["ID_PROYECTO"]);
            using (cnx1)

            {
                existe = (from w in cnx1.proyecto
                       where w.Id == id_proyecto
                       select w).FirstOrDefault();

                existe.nombre_proy = txt_nombre.Text;
                existe.objetivos = txt_objetivo.Text;
                existe.valor_proy = Convert.ToDouble(txt_valor.Value);
                existe.id_municipio = Convert.ToInt32(cmb_municipios.SelectedValue);
                cnx1.SaveChanges();
                Session["ID_PROYECTO"] = "";
                string cadena_url = Request.QueryString.ToString();
                string message = "Proyecto actualizado correctamente";
                string url = "Modificar_Proyecto.aspx?" + cadena_url;
                string script = "{ alert('";
                script += message; script += "');"; script += "window.location = '"; script += url; script += "'; }";
                RadScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "alert", script, true);
            }
        }
    }
}