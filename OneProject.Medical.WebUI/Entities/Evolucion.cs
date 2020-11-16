using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OneProject.Medical.WebUI.Entities
{
    public class Evolucion
    {
        /// <summary>
        /// 
        /// </summary>
        public string ClaveEvolucion
        { get; set; }
        public string FechaEgreso
        { get; set; }

        public string FechaDefuncion
        { get; set; }
        public string FolioCertificadoDefuncion
        { get; set; }
        public string Defuncion2019nCov
        { get; set; }
       
    }
}