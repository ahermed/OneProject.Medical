using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OneProject.Medical.WebUI.Entities
{
    public class AntecedenteEpidemiologico
    {

        public string ViajeChina
        { get; set; }
        public string ResidenteChina
        { get; set; }


        public DateTime? FechaViajeChina
        { get; set; }
        public string AerolineaLlegadaMexico
        { get; set; }

        public DateTime? FechaLLegadaMexico
        { get; set; }
        public string ContactoPersonaSintomalogia
        { get; set; }
        public string LugarContacto
        { get; set; }
        public string ContactoAnimales
        { get; set; }
        public string ContactoAnimalesCuales
        { get; set; }
        public string TipoContacto
        { get; set; }
        public string VisitoMercadoAnimales
        { get; set; }
        public string VisitoMercadoAnimalesLugar
        { get; set; }
        public string VisitoMercadoAnimalesFecha
        { get; set; }


        public string Pais
        { get; set; }
        public string Ciudad
        { get; set; }
        public DateTime FechaLlegada
        { get; set; }
        public string FechaSalida
        { get; set; }
        public string AerolineaVuelo
        { get; set; }


        public Boolean ContactoPersonaSospechosas
        { get; set; }
        public Boolean ContactoPersonaConfirmada
        { get; set; }
        public Boolean ContactoPersonaViajadoChina
        { get; set; }



    }
}