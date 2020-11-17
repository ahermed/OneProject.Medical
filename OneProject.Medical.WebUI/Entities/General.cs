using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OneProject.Medical.WebUI.Entities
{
    public class General
    {

        public string IdPersona
        { get; set; }
        public DateTime FechaIngresoUnidad
        { get; set; }
        public string PrimerApellido
        { get; set; }
        public string SegundoApellido
        { get; set; }
        public string Nombres
        { get; set; }
        public string NacimientoDia
        { get; set; }
        public string NacimientoMes
        { get; set; }

        public string NacimientoAnio
        { get; set; }
        public int Edad
        { get; set; }
        public string CURP
        { get; set; }
        public string SEXO
        { get; set; }
        public Boolean Embarazada
        { get; set; }


        public int MesesEmbarazo
        { get; set; }
        public string Puerperio
        { get; set; }

        public string PuerperioDias
        { get; set; }

        public string NacionalidadMExicana
        { get; set; }
        public string NacionalidadExtranjera
        { get; set; }
        public string PaisOrigen
        { get; set; }
        public string NumeroExpediente
        { get; set; }
        public string EntidadNacimeitno
        { get; set; }
        public string MunicipioResidencia
        { get; set; }
        public string Entidad
        { get; set; }
        public string Localidad
        { get; set; }


        public string Calle
        { get; set; }
        public string NumeroExterioir
        { get; set; }
        public string NumeroInterior
        { get; set; }
        public string EntreCalles1
        { get; set; }
        public string EntreCalles2
        { get; set; }
        public string Colonia
        { get; set; }
        public string CP
        { get; set; }
        public string Telefono
        { get; set; }
        public string Indigena
        { get; set; }
        public string LenguaIndigena
        { get; set; }
        public string Ocupacion
        { get; set; }
        public string Migrante
        { get; set; }
        public string CorreoElectronico
        { get; set; }
    }
}