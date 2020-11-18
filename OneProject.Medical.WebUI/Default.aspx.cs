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

        ListItem i;
        ListItem j;




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


            i = new ListItem("Seleccionar...", "0");
            ddlListaContactoPersona.Items.Add(i);
            i = new ListItem("Hogar", "1");
            ddlListaContactoPersona.Items.Add(i);
            i = new ListItem("Área de trabajo", "2");
            ddlListaContactoPersona.Items.Add(i);
            i = new ListItem("Área de entretenimiento social", "3");
            ddlListaContactoPersona.Items.Add(i);
            i = new ListItem("Unidad médica", "4");
            ddlListaContactoPersona.Items.Add(i);

            j = new ListItem("Seleccionar...", "0");
            ddlListaContactoAnimal.Items.Add(j);
            j = new ListItem("Animales vivos", "1");
            ddlListaContactoAnimal.Items.Add(j);
            j = new ListItem("Animales muertos", "2");
            ddlListaContactoAnimal.Items.Add(j);
            j = new ListItem("Sangre", "3");
            ddlListaContactoAnimal.Items.Add(j);
            j = new ListItem("Heces", "4");
            ddlListaContactoAnimal.Items.Add(j);
            j = new ListItem("Huevo", "5");
            ddlListaContactoAnimal.Items.Add(j);
            j = new ListItem("Víseras", "6");
            ddlListaContactoAnimal.Items.Add(j);



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
                            NacimientoDía = short.Parse(ddlDia.SelectedValue),
                            NacimientoMes = short.Parse(ddlMes.SelectedValue),
                            NacimientoAnio = short.Parse(anio.Text),
                            Edad = short.Parse(edad.Text),
                            CURP = curp.Text,
                            Sexo = sexo.SelectedValue,
                            Embarazada = ConvertBool(embarazada.SelectedValue),
                            MesesEmbarazo = short.Parse(mesesEmbarazo.Text),
                            EnPeriodoPuerperio = ConvertBool(periodoPuerperio.SelectedValue),
                            DiasPuerperio = short.Parse(diasPuerperio.Text),
                            Nacionalidad = nacionalidad.SelectedValue,
                            PaisOrigen = paisOrigen.Text,
                            NoExpedienteSeguridadSocial = seguroSocial.Text,
                            EntidadNacimiento = "d",
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
                            ViajoChina14dPrevInicioSintomas = ConvertBool(viajeChina.SelectedValue),
                            ResidenteChina = ConvertBool(residenteChina.SelectedValue),
                            FechaViajeChina = DateTime.Parse(fechaViaje.Value),
                            AerolineaVueloLlegadaMexico = vuelo.Text,
                            FechaLlegadaMexico = DateTime.Now,
                            ContactoPersonaSintomasRespiratorios = contactoPersona.SelectedValue,
                            LugarContactoPersonas = 1,
                            ContactoAnimales = ConvertBool(contactoAnimal.SelectedValue),
                            CualAnimal = tipoAnimal.Text,
                            TipoContactoAnimal = 1,
                            VisitoMercadoVentaAnimales = ConvertBool(visitaMercado.SelectedValue),
                            LugarMercadoVentaAnimales = lugarMercado.Text,
                            FechaVisitaMercado = DateTime.Now,
                            Ult14dContacCercanoPersSospCoV = ConvertBool(contactoPersonaSospecha.SelectedValue),
                            Ult14dContacCercanoPersCorfiLabCoV = ConvertBool(contactoPersonaConfirmada.SelectedValue),
                            ContacPersViajChina14dPrevIniSintomas = ConvertBool(contactoPersonaChina.SelectedValue)

                        };


                        context.Antecedentes.Add(antecedentes);
                        context.SaveChanges();


                        Models.Viaje viaje = new Models.Viaje()
                        {


                            IdPersona = generales.IdPersona,
                            Pais = paisViaje.Text,
                            Ciudad = ciudadViaje.Text,
                            FechaLlegada = DateTime.Now,
                            FechaSalida = DateTime.Now,
                            AerolineaVuelo = aerolineaViaje.Text


                        };


                        context.Viaje.Add(viaje);
                        context.SaveChanges();


                        Models.DatosClinicos clinicos = new Models.DatosClinicos()
                        {


                            IdPersona = generales.IdPersona,
                            FechaInicioSintomas = DateTime.Now,
                            Fiebre = ConvertBool(fiebre.SelectedValue),
                            Tos = ConvertBool(tos.SelectedValue),
                            //Dolor Toraxico no toracico
                            DolorToracico = ConvertBool(dolorToraxico.SelectedValue),
                            DificultadRespiratoria = ConvertBool(difRespiratoria.SelectedValue),
                            Cefalea = ConvertBool(cefalea.SelectedValue),
                            Irritabilidad = ConvertBool(irritabilidad.SelectedValue),
                            Diarrea = ConvertBool(diarrea.SelectedValue),
                            Vomito = ConvertBool(vomito.SelectedValue),
                            Calosfrios = ConvertBool(calosfrios.SelectedValue),
                            DolorAbdominal = ConvertBool(dolorAbdominal.SelectedValue),
                            Mialgias = ConvertBool(mialgias.SelectedValue),
                            Artralgias = ConvertBool(artralgias.SelectedValue),
                            AtaqueAlEdoGral = ConvertBool(ataqueEdoGeneral.SelectedValue),
                            Rinorrea = ConvertBool(rinorrea.SelectedValue),
                            Polipnea = ConvertBool(polipnea.SelectedValue),
                            Odinofagia = ConvertBool(odinofagia.SelectedValue),
                            Conjuntivitis = ConvertBool(conjuntivitis.SelectedValue),
                            Cianosis = ConvertBool(cianosis.SelectedValue),
                            Convulsiones = ConvertBool(convulsiones.SelectedValue),
                            OtroSintoma = otroSintoma.Text,
                            Diabetes = ConvertBool(diabetes.SelectedValue),
                            EPOC = ConvertBool(epoc.SelectedValue),
                            Asma = ConvertBool(asma.SelectedValue),
                            Inmunosupresion = ConvertBool(inmunosupresion.SelectedValue),
                            Hipertension = ConvertBool(hipertension.SelectedValue),
                            VihSida = ConvertBool(sida.SelectedValue),
                            EnfermedadCardio = ConvertBool(enfCardiovascular.SelectedValue),
                            Obesidad = ConvertBool(obesidad.SelectedValue),
                            InsuficienciaRenalCronica = ConvertBool(insufRenal.SelectedValue),
                            InsuficienciaHepaticaCronica = ConvertBool(insufHepatica.SelectedValue),
                            Tabaquismo = ConvertBool(tabaquismo.SelectedValue),
                            OtroCoMorbilidad = "otrt"

                        };

                        context.DatosClinicos.Add(clinicos);
                        context.SaveChanges();


                        Models.DatosUnidadMedica unidadMedica = new Models.DatosUnidadMedica()
                        {

                            IdPersona = generales.IdPersona,
                            ServicioIngreso = servicioIngreso.Text,
                            TipPaciente = tpoPaciente.SelectedValue,
                            FechaIngresoUnidad = DateTime.Now,
                            CasoIngresadoUCI = ConvertBool(casoUCI.SelectedValue),
                            CasoIntubado = ConvertBool(intubado.SelectedValue),
                            CasoDiagnostNeumoniaClinica = ConvertBool(neumonia.SelectedValue),
                            CasoDiagnostNeumoniaRadiológica = ConvertBool(radiologica.SelectedValue)
                        };
                        context.DatosUnidadMedica.Add(unidadMedica);
                        context.SaveChanges();

                        Models.Tratamiento tratamiento = new Models.Tratamiento()
                        {

                            IdPersona = generales.IdPersona,
                            RecibioTrataAntipireticoAnalgesico = tratamientoAnalgesico.SelectedValue,
                            FechaInicioTrataAntipireticoAnalgesico = DateTime.Now,
                            Paracetamol = paracetamol.Checked,
                            Ibuprofeno = ibuprofeno.Checked,
                            AcidoAcetilsalicilico = acetilsalicilico.Checked,
                            ClonixinatoLisina = lisina.Checked,
                            Naproxeno = naproxeno.Checked,
                            Proxicam = proxicam.Checked,
                            MetamizolSodico = metamizol.Checked,
                            Diclofenaco = diclofenaco.Checked,
                            Ketorolaco = ketorolaco.Checked,
                            OtroAntipireticoAnalgesico = true,
                            RecibioTrataAntiviral = tratamientoAntiviral.SelectedValue,
                            FechaInicioTrataAntiviral = DateTime.Now,
                            Amantadina = amantadina.Checked,
                            Rimantadina = rimantadina.Checked,
                            Oseltamivir = oseltamivir.Checked,
                            Zanamivir = zanamivir.Checked,
                            Peramivir = paramivir.Checked,
                            Ribavirina = ribavirina.Checked,
                            OtroAntiviral = "asdasd",
                            RecibioTrataAntibiotico = tratamientoAntibiotico.SelectedValue,
                            FechaInicioTrataAntibiotico = DateTime.Now,
                            Penicilina = penicilina.Checked,
                            Dicloxacilina = dicloxacilina.Checked,
                            Ampicilina = ampicilina.Checked,
                            Amikacina = amikacina.Checked,
                            Doxiciclina = doxiciclina.Checked,
                            Cefalosporina = cefalosporina.Checked,
                            Clindamicina = clindamicina.Checked,
                            Claritromicina = claritromicina.Checked,
                            Ciprofloxacino = ciprofloxacino.Checked,
                            Meropenem = meropenem.Checked,
                            Vancomicina = vancomicina.Checked,
                            AmoxicilinaAcClauvulanico = amoxicilina.Checked,
                            OtrosAntibioticos = true
                        };
                        context.Tratamiento.Add(tratamiento);
                        context.SaveChanges();


                        Models.Laboratorio laboratorio = new Models.Laboratorio()
                        {

                            IdPersona = generales.IdPersona,
                            SeTomoMuestraPaciente = ConvertBool(muestraPaciente.SelectedValue),
                            LaboratorioDiagnostico = labDiagnostico.Text,
                            ExudadoFaringeo = exudadoFaringeo.Checked,
                            ExudadoNasofaringeo = exudadoNasoferingeo.Checked,
                            LavadoBronquial = lavadoBronquial.Checked,
                            BiopsiaPulmon = biopsiaPulmon.Checked,
                            FechaTomaMuestra = DateTime.Now,
                            FechaEnvioMuestra = DateTime.Now,
                            FechaRecepcionMuestra = DateTime.Now,
                            FechaResultado = DateTime.Now,
                            Resultado = resultado.Text
                        };
                        context.Laboratorio.Add(laboratorio);
                        context.SaveChanges();

                        Models.Evolucion evolucion = new Models.Evolucion()
                        {
                            IdPersona = generales.IdPersona,
                            Evolucion1 = 1,
                            FechaEgreso = DateTime.Now,
                            FechaDefunción = DateTime.Now,
                            FolioCertificadoDefunción = folioCertificado.Text,
                            Defuncion2019nCoV = ConvertBool(defuncionCOVID.SelectedValue)
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

        protected void guardar_Click(object sender, EventArgs e) {


            Console.WriteLine("GUARDA");
        
        
        }


    }
}