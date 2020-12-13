<%@ Page Title="" Language="C#" MasterPageFile="~/Padre.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Tienda.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CSSContent" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/dataTables.semanticui.min.css" />
    <style>
        #example_length {
            display: none;

        }
        .item{
           float: left;
           border:1px #e6e5e3 solid;
          /* border-radius:8px;*/
           margin-bottom:7px;
           margin-right:7px;
           margin-left:7px;
        }
        #headerItem{
            background-color:darkblue;
            color:white
        }
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="width:100%; background-color:darkblue;color:white;"><center><i class="fas fa-shopping-basket"></i> Productos</center></h2>
        <br />

  <div class="card-body"  style="float:left;background-color:white;" id="cont">
      
  
      </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JSContent" runat="server">
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.semanticui.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>



    <script type="text/javascript">

        $(document).ready(function () {
            Get_Productos();
        });


        function Get_Productos() {

            $.ajax({
                type: "GET",
                url: "https://localhost:44399/api/Productos",
 
                dataType: 'json',
                contentType: 'application/json',
                success: function (response) {
                    buildItems(response);
                },
                fail: function (response) {
                    //Swal.fire("Algo salio mal!", "Error al cargar la información 2", "error");
                    swal("Upsss!", "Algo salio mal a el realizar tu registro!", "error");
                }
            });
        }

        function buildItems(data) {


  
  
            var cont = $("#cont");
            var html = "";

            for (var i = 0; i < data.length; i++) {
                html += " <div class=\"item\" >";
                html + " <div class=\"card-body item\" >";
                html += "  <h4 id=\"headerItem\"><center>" + data[i].Nombre + "</center></h4><br />";
                html += "<img width = \"150px;\" src=\"data:image/jpeg;base64," + data[0].strfIle + "\" /><br>";
                html += "<center><h4 style=\"color:green;\">$"+data[i].precio+".MXN</h4></center>";
                html += " <div style=\"border - top: 1px solid black\">";
                html += "<button class=\"btn btn-success\"><i class=\"fas fa-cart-plus\"></i> Agregar al carrito</button>";
                html += "<button class=\"btn btn-warning\">Detalles</button>";
                html += "</div>";
                html += "</div>";
            }
            cont.html(html);

            


        }

    </script>

</asp:Content>
