using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace Prueba1.Proyecto
{
    public partial class Agregar_Proyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

          protected void btnguardar_Click(object sender, EventArgs e)
        {
            prueba1Entities cnx1 = new prueba1Entities();
            proyecto py = new proyecto();

            using (cnx1)
            {
                py.codigo_proy = txtcodigo.Text;
                py.nombre_proy = txtnombre.Text;
                py.valor_proy = Convert.ToDouble(txtvalor.Value);
                py.objetivos = txtobjetivos.Text;
                py.id_municipio = Convert.ToInt32(cmb_municipios.SelectedValue);

                cnx1.proyecto.Add(py);
                cnx1.SaveChanges();
                string cadena_url = Request.QueryString.ToString();
                string message = "Proyecto registrado correctamente";
                string url = "Agregar_Proyecto.aspx?" + cadena_url;
                string script = "{ alert('";
                script += message; script += "');"; script += "window.location = '"; script += url; script += "'; }";
                RadScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "alert", script, true);
            }
        }

        protected void txtcodigo_TextChanged(object sender, EventArgs e)
        {
            prueba1Entities cnx = new prueba1Entities();
            using (cnx)
            {
                var codi = (from w in cnx.proyecto
                            where w.codigo_proy == txtcodigo.Text
                            select w).FirstOrDefault();
                if(codi != null)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ya existe un proyecto registrado con ese código')", true);
                    txtcodigo.Text = "";
                }
            }
        }
    }
}