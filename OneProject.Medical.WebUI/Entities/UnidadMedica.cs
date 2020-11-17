using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OneProject.Medical.WebUI.Entities
{
    public class UnidadMedica
    {
        public int IdDatosUnidadMedica
        { get; set; }

        public int IdPersona
        { get; set; }

        public string ServicioIngreso
        { get; set; }

        public string TipoPaciente
        { get; set; }

        public DateTime FechaIngreso
        { get; set; }

        public Boolean CasoIngresadoUCI
        { get; set; }

        public Boolean CasoIntubado
        { get; set; }

        public Boolean CasoDiagnostNeumoniaClinica
        { get; set; }

        public Boolean CasoDiagnostNeumoniaRadiológica
        { get; set; }

    }
}