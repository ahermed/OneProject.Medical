﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OneProject.Medical.WebUI._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="form-horizontal">

            <div class="col-md-12">
                <h3><small class="text-muted">ESTUDIO EPIDEMIOLÓGICO DE CASO SOSPECHOSO DE ENFERMEDAD POR 2019-NCOV</small></h3>
            </div>
            <form class="needs-validation" novalidate id="registraDatos" method="get" action="Register">
                <div class="card">
                    <div class="card-header text-info">
                        DATOS DE LA UNIDAD NOTIFICANTE                         
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="entidadUnidad" class="control-label"> <span class="required">*</span>Entidad:</asp:Label>
                                <asp:TextBox runat="server" type="text" class="form-control" ID="entidadUnidad" name="entidadUnidad" placeholder="Entidad" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfventidadUnidad" runat="server" ControlToValidate="entidadUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="jurisdiccionUnidad" class="control-label"><span class="required">*</span>Jurisdicción: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="jurisdiccionUnidad" name="jurisdiccionUnidad" type="text" placeholder="Jurisdicción" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvjurisdiccionUnidad" runat="server" ControlToValidate="jurisdiccionUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="municipioUnidad" class="control-label "><span class="required">*</span>Municipio: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="municipioUnidad" name="municipioUnidad" type="text" placeholder="Municipio" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvmunicipioUnidad" runat="server" ControlToValidate="municipioUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-5">
                                <asp:Label runat="server" for="nombreUnidad" class="control-label"><span class="required">*</span>Nombre de la Unidad Médica: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="nombreUnidad" name="nombreUnidad" type="text" placeholder="Nombre de la Unidad Médica" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvnombreUnidad" runat="server" ControlToValidate="nombreUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="institucionUnidad" class="control-label"><span class="required">*</span>Institución: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="institucionUnidad" name="institucionUnidad" type="text" placeholder="institucionUnidad" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvinstitucionUnidad" runat="server" ControlToValidate="institucionUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="clues" class="control-label"> <span class="required">*</span>CLUES:</asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="clues" name="clues" type="text" placeholder="CLUES" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvclues" runat="server" ControlToValidate="clues" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="card">
                    <div class="card-header text-info">
                        DATOS GENERALES                          
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="fechaIngreso" class="control-label "><span class="required">*</span>Fecha de ingreso a la unidad:  </asp:Label>
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaIngreso" name="fechaIngreso" runat="server">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="pApellido" class="control-label"><span class="required">*</span>Primer Apellido:  </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="pApellido" name="pApellido" type="text" placeholder="Primer Apellido" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvpApellido" runat="server" ControlToValidate="pApellido" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="sApellido" class="control-label">Segundo Apellido:  </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="sApellido" name="sApellido" type="text" placeholder="Segundo Apellido" MaxLength="50" />
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="nombre" class="control-label"><span class="required">*</span>Nombre(s): </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="nombre" name="nombre" type="text" placeholder="Nombre(s)" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvnombre" runat="server" ControlToValidate="nombre" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="fechaNacimiento" class="control-label ">Fecha de Nacimiento: </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-1">
                                <asp:Label runat="server" for="ddlDia" class="control-label "><span class="required">*</span>Día: </asp:Label>
                                <asp:DropDownList runat="server" ID="ddlDia" class="form-control" name="ddlDia" type="text" />
                                <asp:RequiredFieldValidator ID="rfvddlDia" runat="server" ControlToValidate="ddlDia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="ddlMes" class="control-label "> <span class="required">*</span>Mes:</asp:Label>
                                <asp:DropDownList runat="server" ID="ddlMes" class="form-control " name="ddlMes" type="text" />
                                <asp:RequiredFieldValidator ID="rfcMes" runat="server" ControlToValidate="ddlMes" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="anio" class="control-label "><span class="required">*</span>Año: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="anio" name="anio" placeholder="Año" type="number" />
                                <asp:RequiredFieldValidator ID="rfvanio" runat="server" ControlToValidate="anio" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="edad" class="control-label "><span class="required">*</span>Edad: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="edad" name="edad" type="number" placeholder="Edad" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="edad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-5">
                                <asp:Label runat="server" for="curp" class="control-label ">CURP:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="curp" name="curp" type="text" placeholder="CURP" MaxLength="18" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="sexo" class="control-label "> <span class="required">*</span>Sexo:</asp:Label>
                                <asp:RadioButtonList ID="sexo" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Hombre</asp:ListItem>
                                    <asp:ListItem Value="2">Mujer</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvsexo" runat="server" ControlToValidate="sexo" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="embarazada" class="control-label ">¿Está embarazada?</asp:Label>
                                <asp:RadioButtonList ID="embarazada" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="mesesEmbarazo" class="control-label "> Meses de embarazo: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="mesesEmbarazo" name="requiredText" type="number" placeholder="Meses" />
                            </div>
                            <div class="form-group col-md-4">
                                <asp:Label runat="server" for="periodoPuerperio" class="control-label ">Se encuentra en periodo de puerperio:</asp:Label>
                                <asp:RadioButtonList ID="periodoPuerperio" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="diasPuerperio" class="control-label ">Días de puerperio: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="diasPuerperio" name="diasPuerperio" type="number" placeholder="Días" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="nacionalidad" class="control-label "><span class="required">*</span>Nacionalidad: </asp:Label>
                                <asp:RadioButtonList ID="nacionalidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Mexicana</asp:ListItem>
                                    <asp:ListItem Value="2">Extranjera</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvnacionalidad" runat="server" ControlToValidate="nacionalidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>

                            <div class="form-group col-md-5">
                                <asp:Label runat="server" for="paisOrigen" class="control-label ">País de origen:</asp:Label>
                                <asp:TextBox runat="server" class="form-control" ID="paisOrigen" name="paisOrigen" type="text" placeholder="País de origen" MaxLength="50" />
                            </div>

                            <div class="form-group col-md-4">
                                <asp:Label runat="server" for="seguroSocial" class="control-label ">No. Expediente o Seguridad Social: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="seguroSocial" name="seguroSocial" type="text" placeholder="No. Expediente o Seguridad Social" MaxLength="30" />
                            </div>

                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="entidadNacimiento" class="control-label ">Entidad de Nacimiento:</asp:Label>
                               <asp:TextBox runat="server" class="form-control " ID="entidadNacimiento" name="entidadNacimiento" type="text" placeholder="Entidad de Nacimiento" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfventidadNacimiento" runat="server" ControlToValidate="entidadNacimiento" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                           </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="entidadResidencia" class="control-label "> <span class="required">*</span>Delegación de Residencia:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="entidadResidencia" name="entidadResidencia" type="text" placeholder="Entidad/Delegación de Residencia" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfventidadResidencia" runat="server" ControlToValidate="entidadResidencia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="municipioResidencia" class="control-label "><span class="required">*</span>Municipio de residencia: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="municipioResidencia" name="municipioResidencia" type="text" placeholder="Municipio de residencia" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvmunicipioResidencia" runat="server" ControlToValidate="municipioResidencia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="localidad" class="control-label "> <span class="required">*</span>Localidad:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="localidad" name="localidad" type="text" placeholder="Localidad" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvlocalidad" runat="server" ControlToValidate="localidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-8">
                                <asp:Label runat="server" for="calle" class="control-label "> <span class="required">*</span>Calle: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="calle" name="calle" type="text" placeholder="Calle" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvcalle" runat="server" ControlToValidate="calle" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="numeroExterno" class="control-label "><span class="required">*</span> Número externo: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="numeroExterno" name="numeroExterno" type="text" placeholder="Número ext." MaxLength="20" />
                                <asp:RequiredFieldValidator ID="rfvnumeroExterno" runat="server" ControlToValidate="numeroExterno" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="numeroInterno" class="control-label "> Número interno:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="numeroInterno" name="numeroInterno" type="text" placeholder="Número int." MaxLength="20" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="calle1" class="control-label "> Entre qué calles: </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <asp:TextBox runat="server" class="form-control " ID="calle1" name="calle1" type="text" placeholder="Calle 1" MaxLength="50" />
                            </div>
                            <div class="form-group col-md-2 text-center">
                                <asp:Label runat="server" for="confirm_password" class="control-label ">y </asp:Label>
                            </div>
                            <div class="form-group col-md-5">
                                <asp:TextBox runat="server" class="form-control " ID="calle2" name="calle2" type="text" placeholder="Calle 2" MaxLength="50" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-7">
                                <asp:Label runat="server" for="colonia" class="control-label ">  <span class="required">*</span>Colonia:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="colonia" name="colonia" type="text" placeholder="Colonia" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvcolonia" runat="server" ControlToValidate="colonia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="cp" class="control-label "> C.P.: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="cp" name="cp" type="number" placeholder="C.P." />
                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="telefono" class="control-label "><span class="required">*</span>  Teléfono: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="telefono" name="telefono" type="text" placeholder="Teléfono" MaxLength="30" />
                                <asp:RequiredFieldValidator ID="rfvtelefono" runat="server" ControlToValidate="telefono" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="indigena" class="control-label "> <span class="required">*</span> Se reconoce como indígena:</asp:Label>
                                <asp:RadioButtonList ID="indigena" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvindigena" runat="server" ControlToValidate="indigena" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="lenguaIndigena" class="control-label ">  <span class="required">*</span>¿Habla alguna lengua indígena?</asp:Label>
                                <asp:RadioButtonList ID="lenguaIndigena" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvlengua" runat="server" ControlToValidate="lenguaIndigena" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="correo" class="control-label "><span class="required">*</span>Correo electrónico: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="correo" name="correo" type="email" placeholder="Correo electrónico" MaxLength="30" />
                                <asp:RequiredFieldValidator ID="rfvcorreo" runat="server" ControlToValidate="correo" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <asp:Label runat="server" for="ocupacion" class="control-label ">  <span class="required">*</span>Ocupación:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="ocupacion" name="ocupacion" type="text" placeholder="Ocupación" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvocupacion" runat="server" ControlToValidate="ocupacion" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="migrante" class="control-label "><span class="required">*</span>¿Es Migrante?</asp:Label>
                                <asp:RadioButtonList ID="migrante" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvmigrante" runat="server" ControlToValidate="migrante" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                    </div>
                </div>
                <br />
                <div class="card">
                    <div class="card-header text-info">
                        ANTECEDENTES EPIDEMIOLÓGICOS                          
                    </div>
                    <div class="card-body">
                        <form class="form-validate " id="antecedentes" method="get">

                            <div class="form-row">
                                <div class="form-group col-md-8">
                                    <asp:Label runat="server" for="viajeChina" class="control-label "><span class="required">*</span> ¿Realizó algún viaje a China en los 14 días
                                                    previos al inicio de signos y síntomas? </asp:Label>
                                    <asp:RadioButtonList ID="viajeChina" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Si</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="rfvviajeChina" runat="server" ControlToValidate="viajeChina" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>

                                <div class="form-group col-md-4">
                                    <asp:Label runat="server" for="residenteChina" class="control-label "> <span class="required">*</span>
                                                    ¿Usted es residente de China?</asp:Label>
                                    <asp:RadioButtonList ID="residenteChina" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Si</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="rfvresidenteChina" runat="server" ControlToValidate="residenteChina" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="" class="control-label ">En caso afirmativo, responda lo siguiente:</asp:Label>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <asp:Label runat="server" for="fechaViaje" class="control-label ">Fecha de viaje a China:</asp:Label>
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaViaje" name="fechaViaje" runat="server">
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:Label runat="server" for="vuelo" class="control-label "> Aerolinea/vuelo de llegada a México: </asp:Label>
                                    <asp:TextBox runat="server" class="form-control " ID="vuelo" name="vuelo" type="text" placeholder="Aerolinea/vuelo de llegada a México" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:Label runat="server" for="fechallegada" class="control-label "> Fecha de llegada a México: </asp:Label>
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechallegada" name="fechallegada" runat="server">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="" class="control-label "> Durante las 2 semanas previas al inicio de los síntomas:</asp:Label>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <asp:Label runat="server" for="contactoPersona" class="control-label "> <span class="required">*</span>¿Tuvo contacto con alguna persona con sintomatología respiratoria?</asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvcontactoPersona" runat="server" ControlToValidate="contactoPersona" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-6">
                                    <asp:RadioButtonList ID="contactoPersona" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="S">Si</asp:ListItem>
                                        <asp:ListItem Value="N">No</asp:ListItem>
                                        <asp:ListItem Value="I">Se ignora</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <asp:Label runat="server" for="lugarContactoPersona" class="control-label ">Lugar de contacto: </asp:Label>
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class="form-control " ID="lugarContactoPersona" name="lugarContactoPersona" type="number" placeholder="Lugar de contacto" />
                                </div>
                                <div class="form-group col-md-7">
                                    <asp:Label runat="server" for="mes" class="control-label "> 1=Hogar 2=Área de trabajo 3=Área de entretenimientosocial 4=Unidad médica </asp:Label>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <asp:Label runat="server" for="contactoAnimal" class="control-label "> <span class="required">*</span> ¿Tuvo contacto con animales?</asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvcontactoAnimal" runat="server" ControlToValidate="contactoAnimal" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-1">
                                    <asp:RadioButtonList ID="contactoAnimal" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Si</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                                <div class="form-group col-md-1">
                                    <asp:Label runat="server" for="tipoAnimal" class="control-label ">Cuál:</asp:Label>
                                </div>
                                <div class="form-group col-md-7">
                                    <asp:TextBox runat="server" class="form-control " ID="tipoAnimal" name="tipoAnimal" type="text" placeholder="Cuál" MaxLength="50" />
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <asp:Label runat="server" for="tpoContactoAnimal" class="control-label "> ¿Qué tipo de contacto tuvo?</asp:Label>
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class="form-control " ID="tpoContactoAnimal" name="tpoContactoAnimal" type="number" placeholder="Tipo contacto" />
                                </div>
                                <div class="form-group col-md-7">
                                    <asp:Label runat="server" for="mes" class="control-label "> 1=Animales vivos 2=Animales muertos 3=Sangre 4=Heces 5=Huevo 6=Vísceras </asp:Label>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <asp:Label runat="server" for="visitaMercado" class="control-label "><span class="required">*</span> ¿Visitó algún mercado, donde hubiera venta de animales?</asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvvisitaMercado" runat="server" ControlToValidate="visitaMercado" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group col-md-2">
                                    <asp:RadioButtonList ID="visitaMercado" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Si</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                                <div class="form-group col-md-1" style="text-align: right;">
                                    <asp:Label runat="server" for="lugarMercado" class="control-label ">Lugar: </asp:Label>
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class="form-control " ID="lugarMercado" name="lugarMercado" type="text" placeholder="Lugar" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-1" style="text-align: right;">
                                    <asp:Label runat="server" for="fechaVisitaMercado" class="control-label ">Fecha:</asp:Label>
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaVisitaMercado" name="fechaVisitaMercado" runat="server">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="" class="control-label ">  Antecedentes de viajes internacionales y nacionales:  </asp:Label><br>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="" class="control-label "> En caso afirmativo informe los países o ciudades visitados </asp:Label>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-2  text-center"" >
                                    <asp:Label runat="server" for="paisViaje" class="control-label"><b>País al que viajó</b></asp:Label>
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="paisViaje" name="paisViaje" placeholder="País" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-3  text-center"">
                                    <asp:Label runat="server" for="ciudadViaje" class="control-label"><b>Ciudad del país al que viajó</b> </asp:Label>
                                    <asp:TextBox runat="server" class=" form-control" ID="ciudadViaje" name="ciudadViaje" type="text" placeholder="Ciudad" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-2  text-center"">
                                    <asp:Label runat="server" for="fechaLlegadaViaje" class="control-label "><b>Fecha llegada</b> </asp:Label>
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaLlegadaViaje" name="fechaLlegadaViaje" runat="server">
                                </div>
                                <div class="form-group col-md-2  text-center"">
                                    <asp:Label runat="server" for="fechaSalidaViaje" class="control-label"><b>Fecha de salida </b></asp:Label>
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaSalidaViaje" name="fechaSalidaViaje" runat="server">
                                </div>
                                <div class="form-group col-md-3  text-center"">
                                    <asp:Label runat="server" for="aerolineaViaje" class="control-label"><b>Aerolínea/vuelo </b></asp:Label>
                                    <asp:TextBox runat="server" class=" form-control" ID="aerolineaViaje" name="aerolineaViaje" type="text" placeholder="Aerolínea/vuelo" MaxLength="50" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="paisViaje1" name="paisViaje1" placeholder="País" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="ciudadViaje1" name="ciudadViaje1" type="text" placeholder="Ciudad" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaLlegadaViaje1" name="fechaLlegadaViaje1" runat="server">
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaSalidaViaje1" name="fechaSalidaViaje1" runat="server">
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="aerolineaViaje1" name="aerolineaViaje1" type="text" placeholder="Aerolínea/vuelo" MaxLength="50" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="paisViaje2" name="paisViaje2" placeholder="País" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="ciudadViaje2" name="ciudadViaje2" type="text" placeholder="Ciudad" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaLlegadaViaje2" name="fechaLlegadaViaje2" runat="server">
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaSalidaViaje2" name="fechaSalidaViaje2" runat="server">
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="aerolineaViaje2" name="aerolineaViaje2" type="text" placeholder="Aerolínea/vuelo" MaxLength="50" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="paisViaje3" name="paisViaje3" placeholder="País" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="ciudadViaje3" name="ciudadViaje3" type="text" placeholder="Ciudad" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaLlegadaViaje3" name="fechaLlegadaViaje3" runat="server">
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaSalidaViaje3" name="fechaSalidaViaje3" runat="server">
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="aerolineaViaje3" name="aerolineaViaje3" type="text" placeholder="Aerolínea/vuelo" MaxLength="50" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <asp:TextBox runat="server" type="text" class="form-control" ID="paisViaje4" name="paisViaje4" placeholder="País" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="ciudadViaje4" name="ciudadViaje4" type="text" placeholder="Ciudad" MaxLength="50" />
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaLlegadaViaje4" name="fechaLlegadaViaje4" runat="server">
                                </div>
                                <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaSalidaViaje4" name="fechaSalidaViaje4" runat="server">
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:TextBox runat="server" class=" form-control" ID="aerolineaViaje4" name="aerolineaViaje4" type="text" placeholder="Aerolínea/vuelo" MaxLength="50" />
                                </div>
                            </div>


                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="contactoPersonaSospecha" class="control-label "> <span class="required">*</span>  ¿En los últimos 14 días, ha tenido contacto cercano con una persona con sospecha de 2019-nCoV?</asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvcontactoPersonaSospecha" runat="server" ControlToValidate="contactoPersonaSospecha" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-1">
                                    <asp:RadioButtonList ID="contactoPersonaSospecha" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Si</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>


                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="contactoPersonaConfirmada" class="control-label ">  <span class="required">*</span>¿En los últimos 14 días, ha tenido contacto  cercano con una persona confirmada por laboratorio para 2019-nCoV? </asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvcontactoPersonaConfirmada" runat="server" ControlToValidate="contactoPersonaConfirmada" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group col-md-1 ">
                                    <asp:RadioButtonList ID="contactoPersonaConfirmada" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Si</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="contactoPersonaChina" class="control-label "> <span class="required">*</span>¿Tuvo contacto con otras personas ofamiliares que hayan viajado a China, en los 14 días previos al inicio de síntomas?  </asp:Label>
                                    <asp:RequiredFieldValidator ID="rfvcontactoPersonaChina" runat="server" ControlToValidate="contactoPersonaChina" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group col-md-1 ">
                                    <asp:RadioButtonList ID="contactoPersonaChina" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Si</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                            </div>

                            <div class="form-row" style="margin-top: 10px;">
                                <div class="form-group col-md-12">
                                    <asp:Label runat="server" for="" class="control-label" Style="font-size: small;">
                                                    <b>
                                                        *Contacto
                                                        cercano:&nbsp;
                                                    </b>estar a 2 metros de distancia, o dentro de la habitación o área de cuidado, de
                                                    un caso por un periodo
                                                    prolongado de tiempo sin usar el equipo de producción personal (por ejemplo: batas, guantes,
                                                    respirador desechable N95 y protección ocular); puede incluir cuidar, vivir, visitar o
                                                    compartir un área o sala
                                                    de espera médica
                                    </asp:Label>
                                </div>
                            </div>

                        </form>
                    </div>

                </div>
                <br />
                <div class="card">
                    <div class="card-header text-info">
                        DATOS CLÍNICOS                         
                    </div>
                    <div class="card-body">

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="fechaSintomas" class="control-label "> Fecha de inicio de síntomas:   </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaSintomas" name="fechaVisitaMercado" runat="server">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="" class="control-label ">
                                                    ¿En los últimos 14 días ha presentado los
                                                    siguientes signos y síntomas?
                                </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvfiebre" runat="server" ControlToValidate="fiebre" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:Label runat="server" for="fiebre" class="control-label ">Fiebre</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="fiebre" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>

                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvcefalea" runat="server" ControlToValidate="cefalea" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="cefalea" class="control-label ">Cefalea</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="cefalea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvmorbilidad" runat="server" ControlToValidate="morbilidad" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="morbilidad" class="control-label ">Co-morbilidad</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="morbilidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvtos" runat="server" ControlToValidate="tos" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="tos" class="control-label ">Tos</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="tos" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvirritabilidad" runat="server" ControlToValidate="irritabilidad" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="irritabilidad" class="control-label ">Irritabilidad</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="irritabilidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvdiabetes" runat="server" ControlToValidate="diabetes" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="diabetes" class="control-label ">Diabetes</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="diabetes" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvdolorToraxico" runat="server" ControlToValidate="dolorToraxico" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="dolorToraxico" class="control-label ">Dolor torácico</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="dolorToraxico" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvdiarrea" runat="server" ControlToValidate="diarrea" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="diarrea" class="control-label ">Diarrea</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="diarrea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvepoc" runat="server" ControlToValidate="epoc" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:Label runat="server" for="epoc" class="control-label ">EPOC</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="epoc" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvdifRespiratoria" runat="server" ControlToValidate="difRespiratoria" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="difRespiratoria" class="control-label ">Dificultad respiratoria</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="difRespiratoria" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvvomito" runat="server" ControlToValidate="vomito" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="vomito" class="control-label ">Vómito</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="vomito" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvasma" runat="server" ControlToValidate="asma" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="asma" class="control-label ">Asma</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="asma" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvcalosfrios" runat="server" ControlToValidate="calosfrios" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="calosfrios" class="control-label ">Calosfríos</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="calosfrios" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvinmunosupresion" runat="server" ControlToValidate="inmunosupresion" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="inmunosupresion" class="control-label ">Inmunosupresión</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="inmunosupresion" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvdolorAbdominal" runat="server" ControlToValidate="dolorAbdominal" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="dolorAbdominal" class="control-label ">Dolor abdominal</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="dolorAbdominal" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvhipertension" runat="server" ControlToValidate="hipertension" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="hipertension" class="control-label ">Hipertensión</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="hipertension" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvmialgias" runat="server" ControlToValidate="mialgias" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="mialgias" class="control-label ">Mialgias</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="mialgias" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvsida" runat="server" ControlToValidate="sida" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="sida" class="control-label ">VIH/Sida</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="sida" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvartralgias" runat="server" ControlToValidate="artralgias" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="artralgias" class="control-label ">Artralgias</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="artralgias" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvenfCardiovascular" runat="server" ControlToValidate="enfCardiovascular" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="enfCardiovascular" class="control-label ">Enfermedad cardiovasvular</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="enfCardiovascular" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvataqueEdoGeneral" runat="server" ControlToValidate="ataqueEdoGeneral" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="ataqueEdoGeneral" class="control-label ">Ataque al estado general</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="ataqueEdoGeneral" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvobesidad" runat="server" ControlToValidate="obesidad" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="obesidad" class="control-label ">Obesidad</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="obesidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvrinorrea" runat="server" ControlToValidate="rinorrea" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="rinorrea" class="control-label ">Rinorrea</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="rinorrea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvinsufRenal" runat="server" ControlToValidate="insufRenal" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="insufRenal" class="control-label ">Insuficiencia renal crónica</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="insufRenal" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvpolipnea" runat="server" ControlToValidate="polipnea" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="polipnea" class="control-label ">Polipnea</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="polipnea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvinsufHepatica" runat="server" ControlToValidate="insufHepatica" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="insufHepatica" class="control-label ">Insuficiencia hepática crónica</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="insufHepatica" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvodinofagia" runat="server" ControlToValidate="odinofagia" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="odinofagia" class="control-label ">Odinofagia</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="odinofagia" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvtabaquismo" runat="server" ControlToValidate="tabaquismo" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="tabaquismo" class="control-label ">Tabaquismo</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="tabaquismo" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvconjuntivitis" runat="server" ControlToValidate="conjuntivitis" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="conjuntivitis" class="control-label ">Conjuntivitis</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="conjuntivitis" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">

                                <asp:Label runat="server" for="otroDatoClinico" class="control-label ">Otro</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:TextBox runat="server" class="form-control " ID="otroDatoClinico" name="otroDatoClinico" type="text" placeholder="otro" MaxLength="50" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvcianosis" runat="server" ControlToValidate="cianosis" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="cianosis" class="control-label ">Cianosis</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="cianosis" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvconvulsiones" runat="server" ControlToValidate="convulsiones" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                <asp:Label runat="server" for="convulsiones" class="control-label ">Convulsiones</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="convulsiones" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="otroSintoma" class="control-label ">Otro</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:TextBox runat="server" class="form-control " ID="otroSintoma" name="otroSintoma" type="text"
                                    placeholder="otro" MaxLength="50" />
                            </div>
                        </div>

                    </div>
                </div>
                <br />
                <div class="card">
                    <div class="card-header text-info">
                        DATOS DE LA UNIDAD MÉDICA                         
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="servicioIngreso" class="control-label "><span class="required">*</span> Servicio de ingreso:  </asp:Label>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox runat="server" class="form-control " ID="servicioIngreso" name="servicioIngreso" type="text" placeholder="Servicio de ingreso" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvservicioIngreso" runat="server" ControlToValidate="servicioIngreso" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="tpoPaciente" class="control-label "><span class="required">*</span>
                                                    Tipo de paciente 
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <asp:RadioButtonList ID="tpoPaciente" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="A">Ambulatorio</asp:ListItem>
                                    <asp:ListItem Value="H">Hospitalizado</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvtpoPaciente" runat="server" ControlToValidate="tpoPaciente" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="fechaIngresoUnidad" class="control-label "><span class="required">*</span>
                                                    Fecha de ingreso a la unidad: 
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaIngresoUnidad" name="fechaIngresoUnidad" runat="server">
                            </div>
                            <div class="form-group col-md-4" style="text-align: right;">
                                <asp:Label runat="server" for="casoUCI" class="control-label "> <span class="required">*</span>El caso fue ingresado a la UCI:
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3 ">
                                <asp:RadioButtonList ID="casoUCI" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvcasoUCI" runat="server" ControlToValidate="casoUCI" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-9" style="text-align: right;">
                                <asp:Label runat="server" for="intubado" class="control-label "> <span class="required">*</span>
                                                    El caso fue intubado:
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3 ">
                                <asp:RadioButtonList ID="intubado" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvintubado" runat="server" ControlToValidate="intubado" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-9" style="text-align: right;">
                                <asp:Label runat="server" for="neumonia" class="control-label "> <span class="required">*</span>
                                                    El caso tiene diagnóstico de Neumonía:
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-1" style="text-align: right;">
                                <asp:RequiredFieldValidator ID="rfvneumonia" runat="server" ControlToValidate="neumonia" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                <asp:Label runat="server" for="neumonia" class="control-label ">Clínica:</asp:Label>
                            </div>
                            <div class="form-group col-md-1 ">
                                <asp:RadioButtonList ID="neumonia" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-10" style="text-align: right;">
                                <asp:Label runat="server" for="radiologica" class="control-label ">Radiológica:</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="radiologica" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvradiologica" runat="server" ControlToValidate="radiologica" Display="Dynamic" ErrorMessage="Datos obligatorios." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="card">
                    <div class="card-header text-info">
                        TRATAMIENTO                          
                    </div>
                    <div class="card-body">

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="tratamientoAnalgesico" class="control-label "><span class="required">*</span>
                                                    ¿Recibió tratamiento
                                                    antipirético/analgésico?
                                        </asp:Label><br>
                                    </div>
                                    <div class="form-group col-md-3 form-check-inline">
                                        <asp:RadioButtonList ID="tratamientoAnalgesico" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="S">Si</asp:ListItem>
                                            <asp:ListItem Value="N">No</asp:ListItem>
                                            <asp:ListItem Value="I">Se ignora</asp:ListItem>
                                        </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="rfvtratamientoAnalgesico" runat="server" ControlToValidate="tratamientoAnalgesico" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="fechaTratamientoAnalgesico" class="control-label ">
                                                    Fecha de inicio del tratamiento antipirético/analgésico:
                                                    
                                        </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                     <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaTratamientoAnalgesico" name="fechaTratamientoAnalgesico" runat="server">                                 
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" for="" class="control-label ">
                                                    *Puede marcar más de una opción de la lista siguiente                                                   
                                        </asp:Label>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="paracetamol" runat="server"
                                            Text="Paracetamol" />
                                    </div>
                                    <div class="form-group col-md-3">
                                         <asp:CheckBox ID="naproxeno" runat="server"
                                            Text="Naproxeno" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="diclofenaco" runat="server"
                                            Text="Diclofenaco" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3 ">
                                        <asp:CheckBox ID="ibuprofeno" runat="server"
                                            Text="Ibuprofeno" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="proxicam" runat="server"
                                            Text="Proxicam" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="ketorolaco" runat="server"
                                            Text="Ketorolaco" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="acetilsalicilico" runat="server"
                                            Text="Ácido acetilsalicílico" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="metamizol" runat="server"
                                            Text="Metamizol sódico" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="otro2" runat="server"
                                            Text="otro" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="lisina" runat="server"
                                            Text="Clonixinato de lisina" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="tratamientoAntiviral" class="control-label "><span class="required">*</span>
                                                    ¿Recibió tratamiento
                                                    antiviral?
                                        </asp:Label><br>
                                    </div>
                                    <div class="form-group col-md-3 form-check-inline">
                                        <asp:RadioButtonList ID="tratamientoAntiviral" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="S">Si</asp:ListItem>
                                            <asp:ListItem Value="N">No</asp:ListItem>
                                            <asp:ListItem Value="I">Se ignora</asp:ListItem>
                                        </asp:RadioButtonList>
                              <asp:RequiredFieldValidator ID="rfvtratamientoAntiviral" runat="server" ControlToValidate="tratamientoAntiviral" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    </div>

                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="fechaTratamientoAntiviral" class="control-label ">
                                                    Fecha de inicio del tratamiento antiviral:
                                                   
                                        </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                          <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaTratamientoAntiviral" name="fechaTratamientoAntiviral" runat="server">   
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" for="" class="control-label ">
                                                    *Puede marcar más de una opción de la lista siguiente
                                                   
                                        </asp:Label>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="amantadina" runat="server"
                                            Text="Amantadina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="zanamivir" runat="server"
                                            Text="Zanamivir" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="ribavirina" runat="server"
                                            Text="Ribavirina" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="rimantadina" runat="server"
                                            Text="Rimantadina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="paramivir" runat="server"
                                            Text="Paramivir" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="otro4" runat="server"
                                            Text="Otro" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="oseltamivir" runat="server"
                                            Text="Oseltamivir" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="tratamientoAntibiotico" class="control-label "><span class="required">*</span>
                                                    ¿Recibió tratamiento
                                                    antibiótico?
                                        </asp:Label><br>
                                    </div>
                                    <div class="form-group col-md-3 form-check-inline">
                                        <asp:RadioButtonList ID="tratamientoAntibiotico" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="S">Si</asp:ListItem>
                                            <asp:ListItem Value="N">No</asp:ListItem>
                                            <asp:ListItem Value="I">Se ignora</asp:ListItem>
                                        </asp:RadioButtonList>
                     <asp:RequiredFieldValidator ID="rfvtratamientoAntibiotico" runat="server" ControlToValidate="tratamientoAntibiotico" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                                    </div>

                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="fechaTratamientoAntibiotico" class="control-label ">
                                                    Fecha de inicio del tratamiento antibiótico:
                                                   
                                        </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                    <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaTratamientoAntibiotico" name="fechaTratamientoAntibiotico" runat="server">   
   
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    *Puede marcar más de una opción de la lista siguiente
                                                   
                                        </asp:Label>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="penicilina" runat="server"
                                            Text="Penicilina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="clindamicina" runat="server"
                                            Text="Clindamicina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="amoxicilina" runat="server"
                                            Text="Amoxicilina c/s clauvulánico" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="dicloxacilina" runat="server"
                                            Text="Dicloxacilina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="claritromicina" runat="server"
                                            Text="Claritrimicina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="otros" runat="server"
                                            Text="Otros" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="ampicilina" runat="server"
                                            Text="Ampicilina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="ciprofloxacino" runat="server"
                                            Text="Ciprofloxacino" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="amikacina" runat="server"
                                            Text="Amikacina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="meropenem" runat="server"
                                            Text="Meropenem" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="doxiciclina" runat="server"
                                            Text="Doxiciclina" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="vancomicina" runat="server"
                                            Text="Vancomicina" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:CheckBox ID="cefalosporina" runat="server"
                                            Text="Cefalosporina" />
                                    </div>
                                </div>

                    </div>
                </div>  
            <br />
                <div class="card">
                    <div class="card-header text-info">
                        LABORATORIO                          
                    </div>
                    <div class="card-body">

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="muestraPaciente" class="control-label "> <span class="required">*</span>¿Se le tomó muestra al paciente?</asp:Label>
                                <asp:RequiredFieldValidator ID="rfvmuestraPaciente" runat="server" ControlToValidate="muestraPaciente" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-1 ">
                                <asp:RadioButtonList ID="muestraPaciente" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>


                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="labDiagnostico" class="control-label ">  Laboratorio de diagnóstico:</asp:Label>

                            </div>
                            <div class="form-group col-md-5">
                                <asp:TextBox runat="server" class="form-control" ID="labDiagnostico" name="labDiagnostico" type="text" placeholder=" Laboratorio de diagnóstico" MaxLength="50" />

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="dia" class="control-label "> Tipo de muestra</asp:Label><br />
                                <asp:Label runat="server" for="dia" class="control-label "> *Puede marcar más de una opción de la lista siguiente </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:CheckBox ID="exudadoFaringeo" runat="server"
                                    Text="Exudado faríngeo" />
                            </div>
                            <div class="form-group col-md-3">
                                <asp:CheckBox ID="lavadoBronquial" runat="server"
                                    Text="Lavado bronquial" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:CheckBox ID="exudadoNasoferingeo" runat="server"
                                    Text="Exudado nasofaringeo" />
                            </div>
                            <div class="form-group col-md-3">
                                <asp:CheckBox ID="biopsiaPulmon" runat="server"
                                    Text="Biopsia de pulmón" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="fechaTomaMuestra" class="control-label ">
                                                    Fecha de toma de muestra:
                                                  
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaTomaMuestra" name="fechaTomaMuestra" runat="server">
                            </div>

                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="fechaEnvioMuestra" class="control-label ">
                                                    Fecha de envío de la muestra: </asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaEnvioMuestra" name="fechaEnvioMuestra" runat="server">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="fechaRecepMuestra" class="control-label ">
                                                    Fecha de recepción de muestra:
                                                   
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaRecepMuestra" name="fechaRecepMuestra" runat="server">
                            </div>

                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="fechaResultado" class="control-label ">
                                                    Fecha de resultado:
                                                   
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaResultado" name="fechaResultado" runat="server">
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="resultado" class="control-label ">
                                                    Resultado:
                                                   
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:TextBox runat="server" class="form-control" ID="resultado" name="resultado" type="text" placeholder=" Resultado" MaxLength="50" />
                            </div>
                        </div>

                    </div>

                </div>
                <br />
            <div class="card">
                <div class="card-header text-info">
                    EVOLUCIÓN                           
                </div>
                <div class="card-body">

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="evolucion" class="control-label "> <span class="required">*</span>
                                                    Evolución:
                                </asp:Label>
                  <asp:RequiredFieldValidator ID="rfvevolucion" runat="server" ControlToValidate="evolucion" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-3">
                           <asp:TextBox runat="server" class=" form-control" ID="evolucion" name="evolucion" type="number" placeholder="Evolución "  />
   
                            </div>
                            <div class="form-group col-md-7">
                                <asp:Label runat="server" for="mes" class="control-label ">
                                                    1=Alta por mejoría  2=En tratamiento  3=Caso grave
                                                    4=Caso no grave  5=Defunción
                                </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="fechaEgreso" class="control-label ">
                                                    Fecha de egreso:
                                                   
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                            <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaEgreso" name="fechaEgreso" runat="server">   
   
                            </div>
                        </div>

                        <div class="form-row" style="margin-top: 10px;">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="fechaDefuncion" class="control-label ">
                                                    Fecha de defunción:
                                                   
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                  <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" id="fechaDefuncion" name="fechaDefuncion" runat="server">   
   
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="folioCertificado" class="control-label ">
                                                    Folio de certificado de defunción:
                                                   
                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                            <asp:TextBox runat="server" class=" form-control" ID="folioCertificado" name="folioCertificado" type="text" placeholder=" Folio de certificado"  MaxLength="50" />
                            </div>
                            <div class="form-group col-md-3" style="text-align: right;">
                                <asp:Label runat="server" for="defuncionCOVID" class="control-label ">*Defunción por 2019-nCoV</asp:Label><br>
                            </div>
                            <div class="form-group col-md-3 ">
                                <asp:RadioButtonList ID="defuncionCOVID" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>

                            </div>
                        </div>

                        <div class="form-row" style="margin-top: 10px;">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="" class="control-label" Style="font-size: small;">*Anexar copia digitalizada de certificado de defunción si cumple con definición operacional de defunción por 2019-nCoV</asp:Label>
                            </div>
                        </div>

                </div>
            </div>
            <br />
            <div class="card">
                <div class="card-header text-info">
                    CONTACTOS                           
                </div>
                <div class="card-body">


                    <div class="form-row">
                        <div class="form-group col-md-8">
                            <asp:RequiredFieldValidator ID="rfvnombreContacto" runat="server" ControlToValidate="nombreContacto" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" type="text" class="form-control" ID="nombreContacto" name="nombreContacto" placeholder="Nombre (Apellido paterno, materno, nombre)" MaxLength="200" />
                        </div>

                        <div class="form-group col-md-4">
                            <asp:RequiredFieldValidator ID="rfvsexoContacto" runat="server" ControlToValidate="sexoContacto" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:RadioButtonList ID="sexoContacto" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <div class="form-group col-md-1 ">
                            <asp:RequiredFieldValidator ID="rfvedadContacto" runat="server" ControlToValidate="edadContacto" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="edadContacto" name="edadContacto" type="number" placeholder="Edad" />

                        </div>
                        <div class="form-group col-md-2">
                            <asp:RequiredFieldValidator ID="rfvtpoContacto" runat="server" ControlToValidate="tpoContacto" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class="form-control" ID="tpoContacto" name="tpoContacto" type="text" placeholder="ID o ED" MaxLength="2" />

                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvcorreoContacto" runat="server" ControlToValidate="correoContacto" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="correoContacto" name="correoContacto" type="text" placeholder="Correo electrónico" MaxLength="50" />
                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvsintomasContacto" runat="server" ControlToValidate="sintomasContacto" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="sintomasContacto" name="sintomasContacto" type="text" placeholder="(Fiebre, tos, dolor torácico, dificultad respiratoria, otros)" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3">
                            <asp:RequiredFieldValidator ID="rfvobservacionesContacto" runat="server" ControlToValidate="observacionesContacto" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="observacionesContacto" name="observacionesContacto" type="text" placeholder="Observaciones" MaxLength="50" />

                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-8">
                            <asp:RequiredFieldValidator ID="rfvnombreContacto1" runat="server" ControlToValidate="nombreContacto1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" type="text" class="form-control" ID="nombreContacto1" name="nombreContacto1" placeholder="Nombre (Apellido paterno, materno, nombre)" MaxLength="200" />

                        </div>

                        <div class="form-group col-md-4">
                            <asp:RequiredFieldValidator ID="rfvsexoContacto1" runat="server" ControlToValidate="sexoContacto1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:RadioButtonList ID="sexoContacto1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <div class="form-group col-md-1 ">
                            <asp:RequiredFieldValidator ID="rfvedadContacto1" runat="server" ControlToValidate="edadContacto1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="edadContacto1" name="edadContacto" type="number" placeholder="Edad" />

                        </div>
                        <div class="form-group col-md-2">
                            <asp:RequiredFieldValidator ID="rfvtpoContacto1" runat="server" ControlToValidate="tpoContacto1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class="form-control" ID="tpoContacto1" name="tpoContacto1" type="text" placeholder="ID o ED" MaxLength="2" />

                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvcorreoContacto1" runat="server" ControlToValidate="correoContacto1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="correoContacto1" name="correoContacto1" type="text" placeholder="Correo electrónico" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvsintomasContacto1" runat="server" ControlToValidate="sintomasContacto1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="sintomasContacto1" name="sintomasContacto1" type="text" placeholder="(Fiebre, tos, dolor torácico, dificultad respiratoria, otros)" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3">
                            <asp:RequiredFieldValidator ID="rfvobservacionesContacto1" runat="server" ControlToValidate="observacionesContacto1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="observacionesContacto1" name="observacionesContacto1" type="text" placeholder="Observaciones" MaxLength="50" />

                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-8">
                            <asp:RequiredFieldValidator ID="rfvnombreContacto2" runat="server" ControlToValidate="nombreContacto2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" type="text" class="form-control" ID="nombreContacto2" name="nombreContacto2" placeholder="Nombre (Apellido paterno, materno, nombre)" MaxLength="200" />

                        </div>

                        <div class="form-group col-md-4">
                            <asp:RequiredFieldValidator ID="rfvsexoContacto2" runat="server" ControlToValidate="sexoContacto2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:RadioButtonList ID="sexoContacto2" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <div class="form-group col-md-1 ">
                            <asp:RequiredFieldValidator ID="rfvedadContacto2" runat="server" ControlToValidate="edadContacto2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="edadContacto2" name="edadContacto2" type="number" placeholder="Edad" />

                        </div>
                        <div class="form-group col-md-2">
                            <asp:RequiredFieldValidator ID="rfvtpoContacto2" runat="server" ControlToValidate="tpoContacto2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class="form-control" ID="tpoContacto2" name="tpoContacto2" type="text" placeholder="ID o ED" MaxLength="2" />

                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvcorreoContacto2" runat="server" ControlToValidate="correoContacto2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="correoContacto2" name="correoContacto2" type="text" placeholder="Correo electrónico" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvsintomasContacto2" runat="server" ControlToValidate="sintomasContacto2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="sintomasContacto2" name="sintomasContacto2" type="text" placeholder="(Fiebre, tos, dolor torácico, dificultad respiratoria, otros)" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3">
                            <asp:RequiredFieldValidator ID="rfvobservacionesContacto2" runat="server" ControlToValidate="observacionesContacto2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="observacionesContacto2" name="observacionesContacto2" type="text" placeholder="Observaciones" MaxLength="50" />

                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-8">
                            <asp:RequiredFieldValidator ID="rfvnombreContacto3" runat="server" ControlToValidate="nombreContacto3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" type="text" class="form-control" ID="nombreContacto3" name="nombreContacto3" placeholder="Nombre (Apellido paterno, materno, nombre)" MaxLength="200" />

                        </div>

                        <div class="form-group col-md-4">
                            <asp:RequiredFieldValidator ID="rfvsexoContacto3" runat="server" ControlToValidate="sexoContacto3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RadioButtonList ID="sexoContacto3" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <div class="form-group col-md-1 ">
                            <asp:RequiredFieldValidator ID="rfvedadContacto3" runat="server" ControlToValidate="edadContacto3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="edadContacto3" name="edadContacto3" type="number" placeholder="Edad" />

                        </div>
                        <div class="form-group col-md-2">
                            <asp:RequiredFieldValidator ID="rfvtpoContacto3" runat="server" ControlToValidate="tpoContacto3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class="form-control" ID="tpoContacto3" name="tpoContacto3" type="text" placeholder="ID o ED" MaxLength="2" />
                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvcorreoContacto3" runat="server" ControlToValidate="correoContacto3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="correoContacto3" name="correoContacto3" type="text" placeholder="Correo electrónico" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvsintomasContacto3" runat="server" ControlToValidate="sintomasContacto3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="sintomasContacto3" name="sintomasContacto3" type="text" placeholder="(Fiebre, tos, dolor torácico, dificultad respiratoria, otros)" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3">
                            <asp:RequiredFieldValidator ID="rfvobservacionesContacto3" runat="server" ControlToValidate="observacionesContacto3" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="observacionesContacto3" name="observacionesContacto3" type="text" placeholder="Observaciones" MaxLength="50" />

                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-8">
                            <asp:RequiredFieldValidator ID="rfvnombreContacto4" runat="server" ControlToValidate="nombreContacto4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" type="text" class="form-control" ID="nombreContacto4" name="nombreContacto4" placeholder="Nombre (Apellido paterno, materno, nombre)" MaxLength="200" />

                        </div>

                        <div class="form-group col-md-4">
                            <asp:RequiredFieldValidator ID="rfvsexoContacto4" runat="server" ControlToValidate="sexoContacto4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:RadioButtonList ID="sexoContacto4" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <div class="form-group col-md-1 ">
                            <asp:RequiredFieldValidator ID="rfvedadContacto4" runat="server" ControlToValidate="edadContacto4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="edadContacto4" name="edadContacto4" type="number" placeholder="Edad" />

                        </div>
                        <div class="form-group col-md-2">
                            <asp:RequiredFieldValidator ID="rfvtpoContacto4" runat="server" ControlToValidate="tpoContacto4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class="form-control" ID="tpoContacto4" name="tpoContacto4" type="text" placeholder="ID o ED" MaxLength="2" />
                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvcorreoContacto4" runat="server" ControlToValidate="correoContacto4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="correoContacto4" name="correoContacto4" type="text" placeholder="Correo electrónico" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3 ">
                            <asp:RequiredFieldValidator ID="rfvsintomasContacto4" runat="server" ControlToValidate="sintomasContacto4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="sintomasContacto4" name="sintomasContacto4" type="text" placeholder="(Fiebre, tos, dolor torácico, dificultad respiratoria, otros)" MaxLength="50" />

                        </div>
                        <div class="form-group col-md-3">
                            <asp:RequiredFieldValidator ID="rfvobservacionesContacto4" runat="server" ControlToValidate="observacionesContacto4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox runat="server" class=" form-control" ID="observacionesContacto4" name="observacionesContacto4" type="text" placeholder="Observaciones" MaxLength="50" />

                        </div>
                    </div>
                    <div class="form-row" style="margin-top: 10px;">
                        <div class="form-group col-md-12">
                            <asp:Label runat="server" for="confirm_password" class="control-label" Style="font-size: small;">* ID = Intradomiciliario, ED=Extradomiciliario (Trabajo, Unidades médicas, Escuelas, Mercado, Sitio de reunión, etc)</asp:Label>
                        </div>
                        <div class="form-group col-md-12">
                            <asp:Label runat="server" for="confirm_password" class="control-label" Style="font-size: small;">Nota: En caso de que algún contacto cumpla con definición operacional de caso sospechoso, realizar el estudio epidemiológico de caso sospechoso</asp:Label>
                        </div>
                    </div>
                </div>
            </div>
              <asp:Button runat="server" ID="btnSubmitForm" Text="Ok" type="submit" />
            </form>
        </div>
    </div>
</asp:Content>
