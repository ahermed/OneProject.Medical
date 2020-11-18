using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop.Excel;
using Excel = Microsoft.Office.Interop.Excel;


namespace OneProject.Medical.WebUI
{
    public partial class _Default : System.Web.UI.Page
    {


      


        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterOnSubmitStatement(this.GetType(), "val", "validateAndHighlight();");


            for (int i = 1; i <= 31; i++)
            {
                ListItem lst = new ListItem();
                lst.Value = i.ToString();
                lst.Text = i.ToString();
                ddlDia.Items.Add(lst);
            }


            for (int mes = DateTime.MinValue.Month; mes <= DateTime.MaxValue.Month; mes++)
            {
                ListItem lstmes = new ListItem();
                string[] mesinyear = { "seleccione", "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre" };
                lstmes.Value = mes.ToString();
                lstmes.Text = mesinyear[mes];
                ddlMes.Items.Add(lstmes);
            }
           


        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                // Instantiate Excel and start a new workbook.



                Excel.Application excelApp = new Excel.Application();

                // if you want to make excel visible to user, set this property to true, false by default
                excelApp.Visible = false;


                // open an existing workbook
                string workbookPath = @"C:\Temp\ecov.xlsx";
                Excel.Workbook excelWorkbook = excelApp.Workbooks.Open(workbookPath,
                    0, false, 5, "", "", false, Excel.XlPlatform.xlWindows, "",
                    true, false, 0, true, false, false);

                // get all sheets in workbook
                Excel.Sheets excelSheets = excelWorkbook.Worksheets;

                // get some sheet
                string currentSheet = "Estudio de caso";
                Excel.Worksheet excelWorksheet =
                    (Excel.Worksheet)excelSheets.get_Item(currentSheet);

                excelWorksheet.PrintOutEx(Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);

                excelWorkbook.SaveAs(@"C:\Temp\ecov1.xlsx");
                excelApp.Quit();
            }
            catch (Exception theException)
            {
                String errorMessage;
                errorMessage = "Error: ";
                errorMessage = String.Concat(errorMessage, theException.Message);
                errorMessage = String.Concat(errorMessage, " Line: ");
                errorMessage = String.Concat(errorMessage, theException.Source);


            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            try
            {
                using (var context = new Models.EstudioEpidemiologicoEntities())
                {
                    using (var dbContextTransaction = context.Database.BeginTransaction())
                    {

                        Models.DatosGenerales generales = new Models.DatosGenerales()
                        {

                            FechaIngresoUnidad = DateTime.Now,
                            PrimerApellido = pApellido.Text,
                            SegundoApellido = sApellido.Text,
                            Nombres = nombre.Text,
                            NacimientoDía =short.Parse( ddlDia.SelectedValue),
                            NacimientoMes = short.Parse(ddlMes.SelectedValue),
                            NacimientoAnio = short.Parse(anio.Text),
                            Edad = short.Parse(edad.Text),
                            CURP = curp.Text,
                            Sexo = sexo.SelectedValue,
                            Embarazada = ConvertBool(embarazada.SelectedValue),
                            MesesEmbarazo = short.Parse(mesesEmbarazo.Text),
                            EnPeriodoPuerperio = false,
                            DiasPuerperio = 0,
                            Nacionalidad = nacionalidad.SelectedValue,
                            PaisOrigen = paisOrigen.Text,
                            NoExpedienteSeguridadSocial = seguroSocial.Text,
                            EntidadNacimiento = entidadNacimiento.Text,
                            EntidadDelegacionResidencia = entidadResidencia.Text,
                            MunicipioResidencia = municipioResidencia.Text,
                            Localidad = localidad.Text,
                            Calle = calle.Text,
                            NoExterno = numeroExterno.Text,
                            NoInterno = numeroInterno.Text,
                            EntreCalles = calle1.Text,
                            YCalle = calle2.Text,
                            Colonia = colonia.Text,
                            CP = cp.Text,
                            Telefono = telefono.Text,
                            CorreoElectronico = correo.Text,
                            SeReconoceIndigena = ConvertBool(indigena.SelectedValue),
                            HablaAlgunaLenguaIndigena = ConvertBool(lenguaIndigena.SelectedValue),
                            Ocupacion = ocupacion.Text,
                            EsMigrante = ConvertBool(migrante.SelectedValue),
                            PagoRealizado = false,
                            FechaPago = null,
                            FechaImpresion = null,
                            FechaPrueba = null,
                            IdUnidadNotificante = 1,
                            FechaRegistro = DateTime.Now

                        };

                        context.DatosGenerales.Add(generales);
                        context.SaveChanges();

                        Models.Antecedentes antecedentes = new Models.Antecedentes()
                        {

                            IdPersona = generales.IdPersona,
                            ViajoChina14dPrevInicioSintomas =ConvertBool( viajeChina.SelectedValue),
                            ResidenteChina = ConvertBool(origenChino.SelectedValue),
                            FechaViajeChina = DateTime.Parse(fechaViaje.Text),
                            AerolineaVueloLlegadaMexico = vuelo.Text,
                            FechaLlegadaMexico = DateTime.Now,
                            ContactoPersonaSintomasRespiratorios = "I",
                            LugarContactoPersonas = 1,
                            ContactoAnimales = true,
                            CualAnimal = "d",
                            TipoContactoAnimal = 1,
                            VisitoMercadoVentaAnimales = true,
                            FechaVisitaMercado = DateTime.Now,
                            Ult14dContacCercanoPersSospCoV = true,
                            Ult14dContacCercanoPersCorfiLabCoV = true,
                            ContacPersViajChina14dPrevIniSintomas = true

                        };


                        context.Antecedentes.Add(antecedentes);
                        context.SaveChanges();


                        Models.DatosClinicos clinicos = new Models.DatosClinicos()
                        {


                            IdPersona = generales.IdPersona,
                            FechaInicioSintomas = DateTime.Now,
                            Fiebre = true,
                            Tos = true,
                            DolorToracico = true,
                            DificultadRespiratoria = true,
                            Cefalea = true,
                            Irritabilidad = true,
                            Diarrea = true,
                            Vomito = true,
                            Calosfrios = true,
                            DolorAbdominal = true,
                            Mialgias = true,
                            Artralgias = true,
                            AtaqueAlEdoGral = true,
                            Rinorrea = true,
                            Polipnea = true,
                            Odinofagia = true,
                            Conjuntivitis = true,
                            Cianosis = true,
                            Convulsiones = true,
                            OtroSintoma = "otrt",
                            Diabetes = true,
                            EPOC = true,
                            Asma = true,
                            Inmunosupresion = true,
                            Hipertension = true,
                            VihSida = true,
                            EnfermedadCardio = true,
                            Obesidad = true,
                            InsuficienciaRenalCronica = true,
                            InsuficienciaHepaticaCronica = true,
                            Tabaquismo = true,
                            OtroCoMorbilidad = "otrt"

                        };

                        context.DatosClinicos.Add(clinicos);
                        context.SaveChanges();


                    



                        Models.DatosUnidadMedica unidadMedica = new Models.DatosUnidadMedica()
                        {

                            IdPersona = generales.IdPersona,
                            ServicioIngreso = "1",
                            TipPaciente = "A",
                            FechaIngresoUnidad = DateTime.Now,
                            CasoIngresadoUCI = true,
                            CasoIntubado = true,
                            CasoDiagnostNeumoniaClinica = true,
                            CasoDiagnostNeumoniaRadiológica = true
                        };
                        context.DatosUnidadMedica.Add(unidadMedica);
                        context.SaveChanges();

                        Models.Tratamiento tratamiento = new Models.Tratamiento()
                        {

                            IdPersona = generales.IdPersona,
                            RecibioTrataAntipireticoAnalgesico = "I",
                            FechaInicioTrataAntipireticoAnalgesico = DateTime.Now,
                            Paracetamol = true,
                            Ibuprofeno = true,
                            AcidoAcetilsalicilico = true,
                            ClonixinatoLisina = true,
                            Naproxeno = true,
                            Proxicam = true,
                            MetamizolSodico = true,
                            Diclofenaco = true,
                            Ketorolaco = true,
                            OtroAntipireticoAnalgesico = true,
                            RecibioTrataAntiviral = "I",
                            FechaInicioTrataAntiviral = DateTime.Now,
                            Amantadina = true,
                            Rimantadina = true,
                            Oseltamivir = true,
                            Zanamivir = true,
                            Peramivir = true,
                            Ribavirina = true,
                            OtroAntiviral = "asdasd",
                            RecibioTrataAntibiotico = "I",
                            FechaInicioTrataAntibiotico = DateTime.Now,
                            Penicilina = true,
                            Dicloxacilina = true,
                            Ampicilina = true,
                            Amikacina = true,
                            Doxiciclina = true,
                            Cefalosporina = true,
                            Clindamicina = true,
                            Claritromicina = true,
                            Ciprofloxacino = true,
                            Meropenem = true,
                            Vancomicina = true,
                            AmoxicilinaAcClauvulanico = true,
                            OtrosAntibioticos = true
                        };
                        context.Tratamiento.Add(tratamiento);
                        context.SaveChanges();


                        Models.Laboratorio laboratorio = new Models.Laboratorio()
                        {

                            IdPersona = generales.IdPersona,
                            SeTomoMuestraPaciente = true,
                            LaboratorioDiagnostico = "ssd",
                            ExudadoFaringeo = true,
                            ExudadoNasofaringeo = true,
                            LavadoBronquial = true,
                            BiopsiaPulmon = true,
                            FechaTomaMuestra = DateTime.Now,
                            FechaEnvioMuestra = DateTime.Now,
                            FechaRecepcionMuestra = DateTime.Now,
                            FechaResultado = DateTime.Now,
                            Resultado = "ssd"
                        };
                        context.Laboratorio.Add(laboratorio);
                        context.SaveChanges();

                        Models.Evolucion evolucion = new Models.Evolucion()
                        {

                            IdPersona = generales.IdPersona,
                            Evolucion1 = 1,
                            FechaEgreso = DateTime.Now,
                            FechaDefunción = DateTime.Now,
                            FolioCertificadoDefunción = "asdasd",
                            Defuncion2019nCoV = false
                        };

                        context.Evolucion.Add(evolucion);
                        context.SaveChanges();

                        dbContextTransaction.Commit();

                    }
                }

            }
            catch (Exception ex)
            { 
            
            }
        }


        protected bool ConvertBool(string cadena)
        {
            bool convert = false;

            if (cadena == "1")
                convert = true;

            return convert;
        }


    }
}