//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Prueba1
{
    using System;
    using System.Collections.Generic;
    
    public partial class poblacion
    {
        public poblacion()
        {
            this.proyecto_vs_poblacion = new HashSet<proyecto_vs_poblacion>();
        }
    
        public int id { get; set; }
        public string nombre_pob { get; set; }
    
        public virtual ICollection<proyecto_vs_poblacion> proyecto_vs_poblacion { get; set; }
    }
}
