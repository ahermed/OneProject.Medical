<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OneProject.Medical.WebUI._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="form-horizontal">

            <div class="col-md-12">
                <h3><small class="text-muted">ESTUDIO EPIDEMIOLÓGICO DE CASO SOSPECHOSO DE ENFERMEDAD POR 2019-NCOV</small></h3>
            </div>
            <form class="needs-validation" novalidate id="registraDatos"  method="get" action="Register">
            <div class="card">
                <div class="card-header text-info">
                    DATOS DE LA UNIDAD NOTIFICANTE                         
                </div>
                <div class="card-body">          
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="entidadUnidad" class="control-label"> <span class="required">*</span>Entidad:</asp:Label>
                                 <asp:TextBox runat="server" type="text" class="form-control" id="entidadUnidad" name="entidadUnidad" placeholder="Entidad" MaxLength="50" />
                                      <asp:RequiredFieldValidator ID="rfventidadUnidad" runat="server" ControlToValidate="entidadUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="jurisdiccionUnidad" class="control-label"><span class="required">*</span>Jurisdicción: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="jurisdiccionUnidad" name="jurisdiccionUnidad" type="text" placeholder="Jurisdicción" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvjurisdiccionUnidad" runat="server" ControlToValidate="jurisdiccionUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="municipioUnidad" class="control-label "><span class="required">*</span>Municipio: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="municipioUnidad" name="municipioUnidad" type="text" placeholder="Municipio" MaxLength="50"/>
                                 <asp:RequiredFieldValidator ID="rfvmunicipioUnidad" runat="server" ControlToValidate="municipioUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                            <div class="form-group col-md-5">
                                <asp:Label runat="server" for="nombreUnidad" class="control-label"><span class="required">*</span>Nombre de la Unidad Médica: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="nombreUnidad" name="nombreUnidad" type="text" placeholder="Nombre de la Unidad Médica" MaxLength="50"/>
                               <asp:RequiredFieldValidator ID="rfvnombreUnidad" runat="server" ControlToValidate="nombreUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="institucionUnidad" class="control-label"><span class="required">*</span>Institución: </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="institucionUnidad" name="institucionUnidad" type="text" placeholder="institucionUnidad" MaxLength="50"/>
                               <asp:RequiredFieldValidator ID="rfvinstitucionUnidad" runat="server" ControlToValidate="institucionUnidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="clues" class="control-label"> <span class="required">*</span>CLUES:</asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="clues" name="clues" type="text" placeholder="CLUES" MaxLength="50"/>
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
                                <input type="date" min="2020-01-01" max="2022-12-31" class=" form-control" ID="fechaIngreso" name="fechaIngreso">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="pApellido" class="control-label"><span class="required">*</span>Primer Apellido:  </asp:Label>
                                <asp:TextBox runat="server" class=" form-control" ID="pApellido" name="pApellido" type="text" placeholder="Primer Apellido" MaxLength="50"/>
                                <asp:RequiredFieldValidator ID="rfvpApellido" runat="server" ControlToValidate="pApellido" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="sApellido" class="control-label">Segundo Apellido:  </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="sApellido" name="sApellido" type="text" placeholder="Segundo Apellido" MaxLength="50"/>                            
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="nombre" class="control-label"><span class="required">*</span>Nombre(s): </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="nombre" name="nombre" type="text" placeholder="Nombre(s)" MaxLength="50"/>
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
                                <asp:DropDownList runat="server" ID="ddlDia" class="form-control" name="ddlDia" type="text"/>    
                               <asp:RequiredFieldValidator ID="rfvddlDia" runat="server" ControlToValidate="ddlDia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="ddlMes" class="control-label "> <span class="required">*</span>Mes:</asp:Label>
                                <asp:DropDownList runat="server" ID="ddlMes" class="form-control " name="ddlMes" type="text"  />
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
                                <asp:TextBox runat="server" class="form-control " ID="curp" name="curp" type="text" placeholder="CURP" MaxLength="18"/>
                             </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="sexo" class="control-label "> <span class="required">*</span>Sexo:</asp:Label>
                                <asp:RadioButtonList ID="sexo" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" >
                                    <asp:ListItem Value="1">Hombre</asp:ListItem>
                                    <asp:ListItem Value="2">Mujer</asp:ListItem>
                                </asp:RadioButtonList>
                                 <asp:RequiredFieldValidator ID="rfvsexo" runat="server" ControlToValidate="sexo" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="embarazada" class="control-label ">¿Está embarazada?</asp:Label>
                                <asp:RadioButtonList ID="embarazada" runat="server" RepeatDirection="Horizontal" >
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
                                <asp:RadioButtonList ID="periodoPuerperio" runat="server" RepeatDirection="Horizontal" >
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
                                <asp:TextBox runat="server" class="form-control" ID="paisOrigen" name="paisOrigen" type="text" placeholder="País de origen" MaxLength="50"/>
                            </div>

                            <div class="form-group col-md-4">
                                <asp:Label runat="server" for="seguroSocial" class="control-label ">No. Expediente o Seguridad Social: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="seguroSocial" name="seguroSocial" type="text" placeholder="No. Expediente o Seguridad Social" MaxLength="30"/>
                            </div>

                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="entidadNacimiento" class="control-label ">Entidad de Nacimiento:</asp:Label>
                                <input class="form-control " id="entidadNacimiento" name="entidadNacimiento" type="text" placeholder="Entidad de Nacimiento" MaxLength="50"/>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="entidadResidencia" class="control-label "> <span class="required">*</span>/Delegación de Residencia:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="entidadResidencia" name="entidadResidencia" type="text" placeholder="Entidad/Delegación de Residencia" MaxLength="50"/>
                                <asp:RequiredFieldValidator ID="rfventidadResidencia" runat="server" ControlToValidate="entidadResidencia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="municipioResidencia" class="control-label "><span class="required">*</span> de residencia: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="municipioResidencia" name="municipioResidencia" type="text" placeholder="Municipio de residencia" MaxLength="50"/>
                                <asp:RequiredFieldValidator ID="rfvmunicipioResidencia" runat="server" ControlToValidate="municipioResidencia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>                           
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="localidad" class="control-label "> <span class="required">*</span>Localidad:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="localidad" name="localidad" type="text" placeholder="Localidad" MaxLength="50"/>
                              <asp:RequiredFieldValidator ID="rfvlocalidad" runat="server" ControlToValidate="localidad" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>                           
  
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-8">
                                <asp:Label runat="server" for="calle" class="control-label "> <span class="required">*</span>Calle: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="calle" name="calle" type="text" placeholder="Calle" MaxLength="50"/>
                                <asp:RequiredFieldValidator ID="rfvcalle" runat="server" ControlToValidate="calle" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>                           

                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="numeroExterno" class="control-label "><span class="required">*</span> Número externo: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="numeroExterno" name="numeroExterno" type="text" placeholder="Número ext." MaxLength="20"/>
                                  <asp:RequiredFieldValidator ID="rfvnumeroExterno" runat="server" ControlToValidate="numeroExterno" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>                           
                              
                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="numeroInterno" class="control-label "> Número interno:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="numeroInterno" name="numeroInterno" type="text" placeholder="Número int." MaxLength="20"/>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="calle1" class="control-label "> Entre qué calles: </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <asp:TextBox runat="server" class="form-control " ID="calle1" name="calle1" type="text" placeholder="Calle 1" MaxLength="50"/>
                            </div>
                            <div class="form-group col-md-2 text-center">
                                <asp:Label runat="server" for="confirm_password" class="control-label ">y </asp:Label>
                            </div>
                            <div class="form-group col-md-5">
                                <asp:TextBox runat="server" class="form-control " ID="calle2" name="calle2" type="text" placeholder="Calle 2" MaxLength="50"/>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-7">
                                <asp:Label runat="server" for="colonia" class="control-label ">  <span class="required">*</span>Colonia:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="colonia" name="colonia" type="text" placeholder="Colonia" MaxLength="50"/>
                                 <asp:RequiredFieldValidator ID="rfvcolonia" runat="server" ControlToValidate="colonia" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>                           
 
                            </div>
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="cp" class="control-label "> C.P.: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="cp" name="cp" type="number" placeholder="C.P." />
                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="telefono" class="control-label "><span class="required">*</span>  Teléfono: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="telefono" name="telefono" type="text" placeholder="Teléfono" MaxLength="30"/>
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
                                <asp:Label runat="server" for="correo" class="control-label "><span class="required">*</span> electrónico: </asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="correo" name="correo" type="email" placeholder="Correo electrónico" MaxLength="30"/>
                                <asp:RequiredFieldValidator ID="rfvcorreo" runat="server" ControlToValidate="correo" Display="Dynamic" ErrorMessage="Dato obligatorio." ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator> 
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <asp:Label runat="server" for="ocupacion" class="control-label ">  <span class="required">*</span>Ocupación:</asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="ocupacion" name="ocupacion" type="text" placeholder="Ocupación" MaxLength="50"/>
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
                                <asp:Label runat="server" for="viajeChina" class="control-label "> ¿Realizó algún viaje a China en los 14 días
                                                    previos al inicio de signos y síntomas? <span class="required">*</span></asp:Label>
                                <asp:RadioButtonList ID="viajeChina" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                            <div class="form-group col-md-4">
                                <asp:Label runat="server" for="residenteChina" class="control-label ">
                                                    ¿Usted es residente de China? <span class="required">*</span></asp:Label>
                                <asp:RadioButtonList ID="residenteChina" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="fechaViaje" class="control-label ">En caso afirmativo, responda lo siguiente:</asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="fechaViaje" class="control-label ">Fecha de viaje a China: <span class="required">*</span></asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="fechaViaje" name="fechaViaje" type="password" placeholder="dd/mm/aaaa" />
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="vuelo" class="control-label "> Aerolinea/vuelo de llegada a México: <span class="required">*</span></asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="vuelo" name="vuelo" type="text" placeholder="Aerolinea/vuelo de llegada a México" />
                            </div>
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="confirm_password" class="control-label "> Fecha de llegada a México: <span class="required">*</span></asp:Label>
                                <asp:TextBox runat="server" class="form-control " ID="confirm_password" name="confirm_password" type="password" placeholder="dd/mm/aaaa" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="sApellido" class="control-label "> Durante las 2 semanas previas al inicio de los síntomas:</asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" for="sApellido" class="control-label ">¿Tuvo contacto con alguna persona con sintomatología respiratoria?</asp:Label>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                    <asp:ListItem Value="2">Se ignora</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="lugarContacto" class="control-label ">Lugar de contacto: <span class="required">*</span></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <asp:TextBox runat="server" class="form-control " ID="lugarContacto" name="lugarContacto" type="text" placeholder="Lugar de contacto" />
                            </div>
                            <div class="form-group col-md-7">
                                <asp:Label runat="server" for="mes" class="control-label "> 1=Hogar 2=Área de trabajo 3=Área de entretenimientosocial 4=Unidad médica </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="sexo" class="control-label "> ¿Tuvo contacto con animales? <span class="required">*</span></asp:Label>
                            </div>
                            <div class="form-group col-md-1">
                                <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-1">
                                <asp:Label runat="server" for="requiredText" class="control-label ">Cuál: <span class="required">*</span></asp:Label>
                            </div>
                            <div class="form-group col-md-7">
                                <asp:TextBox runat="server" class="form-control " ID="requiredText" name="requiredText" type="text" placeholder="Cuál" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="tpoContacto" class="control-label "> ¿Qué tipo de contacto tuvo? <span class="required">*</span></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <asp:TextBox runat="server" class="form-control " ID="tpoContacto" name="tpoContacto" type="text" placeholder="Tipo contacto" />
                            </div>
                            <div class="form-group col-md-7">
                                <asp:Label runat="server" for="mes" class="control-label "> 1=Animales vivos 2=Animales muertos 3=Sangre 4=Heces 5=Huevo 6=Vísceras </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="sexo" class="control-label "> ¿Visitó algún mercado, donde hubiera venta de animales?<span class="required">*</span></asp:Label>
                            </div>
                            <div class="form-group col-md-1">
                                <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-1" style="text-align: right;">
                                <asp:Label runat="server" for="lugar" class="control-label ">Lugar: <span class="required">*</span></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <asp:TextBox runat="server" class="form-control " ID="lugar" name="lugar" type="text"
                                    placeholder="Lugar" />
                            </div>
                            <div class="form-group col-md-1" style="text-align: right;">
                                <asp:Label runat="server" for="fecha" class="control-label ">Fecha: <span class="required">*</span></asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:TextBox runat="server" class="form-control " ID="fecha" name="fecha" type="text"
                                    placeholder="dd/mm/aaaa" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="email" class="control-label ">
                                                    Antecedentes de viajes internacionales y nacionales:
                                                    <span class="required">*</span>
                                                </asp:Label><br>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="sApellido" class="control-label ">
                                                    En caso afirmativo informe los países o ciudades
                                                    visitados
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-9">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center;">País al que viajó</th>
                                            <th style="text-align: center;">Ciudad del país al que viajó</th>
                                            <th style="text-align: center;">Fecha llegada</th>
                                            <th style="text-align: center;">Fecha de salida</th>
                                            <th style="text-align: center;">Aerolínea/vuelo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-11">
                                <asp:Label runat="server" for="confirm_password" class="control-label ">
                                                    ¿En los últimos 14 días, ha tenido contacto
                                                    cercano con una persona con sospecha de 2019-nCoV? <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-1">
                                <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-11">
                                <asp:Label runat="server" for="confirm_password" class="control-label ">
                                                    ¿En los últimos 14 días, ha tenido contacto
                                                    cercano con una persona confirmada por laboratorio para 2019-nCoV? <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-1 ">
                                <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-11">
                                <asp:Label runat="server" for="confirm_password" class="control-label ">
                                                    ¿Tuvo contacto con otras personas o
                                                    familiares que hayan viajado a China, en los 14 días previos al inicio de síntomas? <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-1 ">
                                <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row" style="margin-top: 10px;">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="confirm_password" class="control-label" Style="font-size: small;">
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
                 <asp:Button runat="server" id="btnSubmitForm" text="Ok" type="submit" />
             </form>
            <br />
            <div class="card">
                <div class="card-header text-info">
                    DATOS CLÍNICOS
                          
                </div>
                <div class="card-body">
                    <form class="form-validate " id="datosClinicos" method="get">

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="fechaSintomas" class="control-label ">
                                                    Fecha de inicio de síntomas: <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox runat="server" class="form-control " ID="fechaSintomas" name="fechaSintomas" type="password"
                                    placeholder="dd/mm/aaaa" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="confirm_password" class="control-label ">
                                                    ¿En los últimos 14 días ha presentado los
                                                    siguientes signos y síntomas?
                                                </asp:Label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="fiebre" class="control-label ">Fiebre</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="fiebre" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="cefalea" class="control-label ">Cefalea</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="cefalea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="morbilidad" class="control-label ">Co-morbilidad</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="morbilidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="tos" class="control-label ">Tos</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="tos" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="irritabilidad" class="control-label ">Irritabilidad</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="irritabilidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="diabetes" class="control-label ">Diabetes</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="diabetes" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="dolorToraxico" class="control-label ">Dolor torácico</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="dolorToraxico" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="diarrea" class="control-label ">Diarrea</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="diarrea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="epoc" class="control-label ">EPOC</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="epoc" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="difRespiratoria" class="control-label ">Dificultad respiratoria</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="difRespiratoria" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="vomito" class="control-label ">Vómito</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="vomito" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="asma" class="control-label ">Asma</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:RadioButtonList ID="asma" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="calosfrios" class="control-label ">Calosfríos</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="calosfrios" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="inmunosupresión" class="control-label ">Inmunosupresión</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="inmunosupresión" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="dolorAbdominal" class="control-label ">Dolor abdominal</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="dolorAbdominal" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="hipertension" class="control-label ">Hipertensión</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="hipertension" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="mialgias" class="control-label ">Mialgias</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="mialgias" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="sida" class="control-label ">VIH/Sida</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="sida" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="artralgias" class="control-label ">Artralgias</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="artralgias" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="enfCardiovascular" class="control-label ">Enfermedad cardiovasvular</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="enfCardiovascular" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="ataqueEdoGeneral" class="control-label ">Ataque al estado general</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="ataqueEdoGeneral" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="obesidad" class="control-label ">Obesidad</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="obesidad" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="rinorrea" class="control-label ">Rinorrea</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="rinorrea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="insufRenal" class="control-label ">Insuficiencia renal crónica</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="insufRenal" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="polipnea" class="control-label ">Polipnea</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="polipnea" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="insufHepatica" class="control-label ">Insuficiencia hepática crónica</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="insufHepatica" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="odinofagia" class="control-label ">Odinofagia</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="odinofagia" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="tabaquismo" class="control-label ">Tabaquismo</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="tabaquismo" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="conjuntivitis" class="control-label ">Conjuntivitis</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="conjuntivitis" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="otro" class="control-label ">Otro</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:TextBox runat="server" class="form-control " ID="otro" name="otro" type="password"
                                    placeholder="otro" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="cianosis" class="control-label ">Cianosis</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="cianosis" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="convulsiones" class="control-label ">Convulsiones</asp:Label>
                            </div>
                            <div class="form-group col-md-2 ">
                                <asp:RadioButtonList ID="convulsiones" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="otro1" class="control-label ">Otro</asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:TextBox runat="server" class="form-control " ID="otro1" name="otro1" type="password"
                                    placeholder="otro" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <br />
            <div class="card">
                <div class="card-header text-info">
                    DATOS DE LA UNIDAD MÉDICA                         
                </div>
                <div class="card-body">
                    <form class="form-validate " id="unidadMedica" method="get">

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="servicioIngreso" class="control-label ">
                                                    Servicio de ingreso: <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox runat="server" class="form-control " ID="servicioIngreso" name="servicioIngreso" type="password"
                                    placeholder="Servicio de ingreso" />
                            </div>
                            <div class="form-group col-md-2" style="text-align: right;">
                                <asp:Label runat="server" for="tpoPaciente" class="control-label ">
                                                    Tipo de paciente <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <asp:RadioButtonList ID="tpoPaciente" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Ambulatorio</asp:ListItem>
                                    <asp:ListItem Value="2">Hospitalizado</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <asp:Label runat="server" for="fechaIngresoUnidad" class="control-label ">
                                                    Fecha de ingreso a la unidad: <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-2">
                                <asp:TextBox runat="server" class="form-control " ID="fechaIngresoUnidad" name="fechaIngresoUnidad" type="text" placeholder="dd/mm/aaaa" />
                            </div>
                            <div class="form-group col-md-4" style="text-align: right;">
                                <asp:Label runat="server" for="casoUCI" class="control-label ">
                                                    El caso fue ingresado a la UCI: <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3 ">
                                <asp:RadioButtonList ID="casoUCI" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-9" style="text-align: right;">
                                <asp:Label runat="server" for="intubado" class="control-label ">
                                                    El caso fue intubado: <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3 ">
                                <asp:RadioButtonList ID="intubado" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-9" style="text-align: right;">
                                <asp:Label runat="server" for="neumonia" class="control-label ">
                                                    El caso tiene diagnóstico de Neumonía: <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-1" style="text-align: right;">
                                <asp:Label runat="server" for="neumonia" class="control-label ">Clínica:</asp:Label>
                            </div>
                            <div class="form-group col-md-1 ">
                                <asp:RadioButtonList ID="RadioButtonList41" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
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
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
            <br />
            <div class="card">
                <div class="card-header text-info">
                    TRATAMIENTO                          
                </div>
                <div class="card-body">
                    <form class="form-validate " id="tratamiento" method="get">
                        <div class="panel-body">
                            <div class="form">

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="sApellido" class="control-label ">
                                                    ¿Recibió tratamiento
                                                    antipirético/analgésico?
                                                </asp:Label><br>
                                    </div>
                                    <div class="form-group col-md-3 form-check-inline">
                                        <asp:RadioButtonList ID="RadioButtonList43" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1">Si</asp:ListItem>
                                            <asp:ListItem Value="2">No</asp:ListItem>
                                            <asp:ListItem Value="2">Se ignora</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="fechaInicioTratamiento" class="control-label ">
                                                    Fecha de inicio del tratamiento antipirético/analgésico:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <asp:TextBox runat="server" class="form-control " ID="fechaInicioTratamiento" name="fechaInicioTratamiento" type="text" placeholder="dd/mm/aaaa" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    *Puede marcar más de una opción de la lista siguiente
                                                    <span class="required">*</span>
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
                                        <asp:Label runat="server" for="sApellido" class="control-label ">
                                                    ¿Recibió tratamiento
                                                    antiviral?
                                                </asp:Label><br>
                                    </div>
                                    <div class="form-group col-md-3 form-check-inline">
                                        <asp:RadioButtonList ID="RadioButtonList44" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1">Si</asp:ListItem>
                                            <asp:ListItem Value="2">No</asp:ListItem>
                                            <asp:ListItem Value="2">Se ignora</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>

                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="fechaIniTratamientoAntiviral" class="control-label ">
                                                    Fecha de inicio del tratamiento antiviral:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <asp:TextBox runat="server" class="form-control " ID="fechaIniTratamientoAntiviral" name="fechaIniTratamientoAntiviral" type="text" placeholder="dd/mm/aaaa" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    *Puede marcar más de una opción de la lista siguiente
                                                    <span class="required">*</span>
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
                                        <asp:Label runat="server" for="sApellido" class="control-label ">
                                                    ¿Recibió tratamiento
                                                    antibiótico?
                                                </asp:Label><br>
                                    </div>
                                    <div class="form-group col-md-3 form-check-inline">
                                        <asp:RadioButtonList ID="RadioButtonList45" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1">Si</asp:ListItem>
                                            <asp:ListItem Value="2">No</asp:ListItem>
                                            <asp:ListItem Value="2">Se ignora</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>

                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    Fecha de inicio del tratamiento antibiótico:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <input class="form-control " id="dia" name="dia" type="text" placeholder="dd/mm/aaaa" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    *Puede marcar más de una opción de la lista siguiente
                                                    <span class="required">*</span>
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
                    </form>
                </div>
            </div>
            <br />
            <div class="card">
                <div class="card-header text-info">
                    LABORATORIO                          
                </div>
                <div class="card-body">
                    <form class="form-validate " id="laboratorio" method="get">
                        <div class="panel-body">
                            <div class="form">

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="sApellido" class="control-label ">¿Se le tomó muestra al paciente?</asp:Label><br>
                                    </div>
                                    <div class="form-group col-md-1 ">
                                        <asp:RadioButtonList ID="RadioButtonList46" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1">Si</asp:ListItem>
                                            <asp:ListItem Value="2">No</asp:ListItem>
                                        </asp:RadioButtonList>

                                    </div>
                                    <div class="form-group col-md-3">
                                        <asp:Label runat="server" for="labDiagnostico" class="control-label ">
                                                    Laboratorio de diagnóstico:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <input class="form-control " id="labDiagnostico" name="labDiagnostico" type="text" placeholder="Laboratorio de diagnóstico" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    Tipo de muestra
                                                    <span class="required">*</span>
                                                </asp:Label>
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    *Puede marcar más de una opción de la lista siguiente
                                                    <span class="required">*</span>
                                                </asp:Label>
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
                                            Text="Lavado bronquial" />
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
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <asp:TextBox runat="server" class="form-control " ID="fechaTomaMuestra" name="fechaTomaMuestra" type="text" placeholder="dd/mm/aaaa" />
                                    </div>

                                    <div class="form-group col-md-2" style="text-align: right;">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    Fecha de envío de la muestra:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <input class="form-control " id="dia" name="dia" type="text" placeholder="dd/mm/aaaa" />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    Fecha de recepción de muestra:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <input class="form-control " id="dia" name="dia" type="text" placeholder="dd/mm/aaaa" />
                                    </div>

                                    <div class="form-group col-md-2" style="text-align: right;">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    Fecha de resultado:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <input class="form-control " id="dia" name="dia" type="text" placeholder="dd/mm/aaaa" />
                                    </div>
                                    <div class="form-group col-md-2" style="text-align: right;">
                                        <asp:Label runat="server" for="dia" class="control-label ">
                                                    Resultado:
                                                    <span class="required">*</span>
                                                </asp:Label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <input class="form-control " id="dia" name="dia" type="text" placeholder="Resultado" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <br />
            <div class="card">
                <div class="card-header text-info">
                    EVOLUCIÓN                           
                </div>
                <div class="card-body">
                    <form class="form-validate " id="evolucion" method="get">

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="dia" class="control-label ">
                                                    Evolución: <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <input class="form-control " id="dia" name="dia" type="text" placeholder="Evolución" />
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
                                <asp:Label runat="server" for="dia" class="control-label ">
                                                    Fecha de egreso:
                                                    <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <input class="form-control " id="dia" name="dia" type="text" placeholder="dd/mm/aaaa" />
                            </div>
                        </div>

                        <div class="form-row" style="margin-top: 10px;">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="dia" class="control-label ">
                                                    Fecha de defunción:
                                                    <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <input class="form-control " id="dia" name="dia" type="text" placeholder="dd/mm/aaaa" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <asp:Label runat="server" for="dia" class="control-label ">
                                                    Folio de certificado de defunción:
                                                    <span class="required">*</span>
                                                </asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <input class="form-control " id="dia" name="dia" type="text" placeholder="Folio de certificado" />
                            </div>
                            <div class="form-group col-md-3" style="text-align: right;">
                                <asp:Label runat="server" for="sApellido" class="control-label ">*Defunción por 2019-nCoV</asp:Label><br>
                            </div>
                            <div class="form-group col-md-3 ">
                                <asp:RadioButtonList ID="RadioButtonList47" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>

                            </div>
                        </div>

                        <div class="form-row" style="margin-top: 10px;">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="confirm_password" class="control-label" Style="font-size: small;">*Anexar copia digitalizada de certificado de defunción si cumple con definición operacional de defunción por 2019-nCoV</asp:Label>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
            <br />
            <div class="card">
                <div class="card-header text-info">
                    CONTACTOS
                           
                </div>
                <div class="card-body">
                    <form class="form-validate " id="contactos" method="get">
                        <div class="row">


                            <div class="form-group col-md-12">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center;">Nombre</th>
                                            <th style="text-align: center;">Sexo</th>
                                            <th style="text-align: center;">Edad</th>
                                            <th style="text-align: center;">Tipo de contacto</th>
                                            <th style="text-align: center;">Correo electrónico</th>
                                            <th style="text-align: center;">Presenta signos y síntomas</th>
                                            <th style="text-align: center;">Observaciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                            <td style="height: 30px;"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="confirm_password" class="control-label" Style="font-size: small;">* ID = Intradomiciliario, ED=Extradomiciliario (Trabajo, Unidades médicas, Escuelas, Mercado, Sitio de reunión, etc)</asp:Label>
                            </div>
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" for="confirm_password" class="control-label" Style="font-size: small;">Nota: En caso de que algún contacto cumpla con definición operacional de caso sospechoso, realizar el estudio epidemiológico de caso sospechoso</asp:Label>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
