using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OneProject.Medical.WebUI.Entities
{
    public class Contacto
    {

        /// <summary>
        /// Contacto
        /// </summary>
        /// 

        public string Nombre
        { get; set; }
        public string Sexo
        { get; set; }   
        public string Edad
        { get; set; }
        public string TipoContacto
        { get; set; }
        public string CorreoElectronico
        { get; set; }
        public string Sintomas
        { get; set; }
        public string Observaciones
        { get; set; }
        
    }
}