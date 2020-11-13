<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OneProject.Medical.WebUI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    
    <form class="needs-validation" novalidate>
        <fieldset>
              <legend>Datos generales Elena</legend>
        <div class="form-row">
            <div class="col-md-4 mb-3">
                <label for="validationCustom01">Primer Apellido</label>
                <asp:TextBox ID="txtPrimerApellido" class="form-control"  placeholder="Primer Apellido"  required runat="server"></asp:TextBox>
            </div>
         
        </div>
        
        
            </fieldset>
     
            
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Button" OnClick="Button1_Click" />

        <asp:Label ID="lblError" runat="server" ForeColor="#CC0000"></asp:Label>

    </form>
    
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>


</asp:Content>
