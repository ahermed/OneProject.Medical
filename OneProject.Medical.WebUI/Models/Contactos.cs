//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OneProject.Medical.WebUI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Contactos
    {
        public int IdContacto { get; set; }
        public int IdPersona { get; set; }
        public string NombreCompleto { get; set; }
        public string Sexo { get; set; }
        public Nullable<short> Edad { get; set; }
        public string TipoContactoIDoED { get; set; }
        public string CorreoElectronico { get; set; }
        public string SignosSintomas { get; set; }
        public string Observaciones { get; set; }
    
        public virtual DatosGenerales DatosGenerales { get; set; }
    }
}
