<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OneProject.Medical.WebUI.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $("[id*=btnPopup]").live("click", function () {
        $("#dialog").dialog({
            title: "Operación exitosa",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
</script>

    <div id="dialog" style="display: none">
    This is a simple popup
</div>

<asp:Button ID="btnPopup" runat="server" Text="Show Popup" />

    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>
