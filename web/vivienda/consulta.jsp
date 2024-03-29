
<%@page import="datos.Municipio"%>
<%@page import="datos.Vivienda"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <title>CONSULTA DE VIVIENDAS</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/af-2.3.4/b-1.6.1/datatables.min.css"/>

        <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/af-2.3.4/b-1.6.1/datatables.min.js"></script>


        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </head>
    <body>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="margin-bottom:0">
            <a class="navbar-brand" href="menu.html">Gesti&oacute;n</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" 
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
                            Paises
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPais?accion=alta">Alta</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPais?accion=listado">Listado</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPais?accion=pantModifBorr">Editar/Eliminar</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
                            Municipios
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlMunicipio?accion=alta">Alta</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlMunicipio?accion=listado">Listado</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlMunicipio?accion=pantModifBorr">Editar/Eliminar</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlMunicipio?accion=actualizar">Actualizar</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlMunicipio?accion=consulta">Consulta por pais</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
                            Viviendas
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlVivienda?accion=alta">Alta</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlVivienda?accion=listado">Listado</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlVivienda?accion=pantModifBorr">Editar/Eliminar</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlVivienda?accion=actualizar">Actualizar</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlVivienda?accion=consulta">Consultar por municipio</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
                            Personas
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPersona?accion=alta">Alta</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPersona?accion=listado">Listado</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPersona?accion=pantModifBorr">Editar/Eliminar</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPersona?accion=consultaV">Consultar por vivienda</a>
                            <a class="dropdown-item" href="/RA6_LopezAngel/ControlPersona?accion=consultaM">Consultar por municipio</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="jumbotron text-center" style="margin-bottom:0">
            <h2>LISTADO DE VIVIENDAS DE <%=request.getAttribute("municipio")%></h2>
        </div>

        <div class="container p-30" style="padding-top: 30px; margin-bottom:100px;">

            <div class="row">


                <div class="col-md-12">

                    <div class="table-responsive">
                        <table id="example" class="table table-striped table-bordered order-column dt-responsive nowrap" style="width:100%">
                            <thead>
                                <tr><th>CODIGO</th><th>MUNICIPIO</th><th>DIRECCION</th><th>METROS CUADRADOS</th><th>A&Ntilde;O CONSTRUCCION</th><th>IMPUESTO</th><th>N� PERSONAS</th></tr>
                            </thead>
                            <tbody
                                <%
                                    ArrayList listavivis
                                            = (ArrayList) request.getAttribute("viviendas");
                                    if (listavivis != null)
                                        for (int i = 0; i < listavivis.size(); i++) {
                                            Vivienda v = (Vivienda) listavivis.get(i);%>  
                                <tr>
                                    <td><%=v.getCodigo()%></td>
                                    <td><%=v.getNombremunicipio()%></td>
                                    <td><%=v.getDireccion()%></td>
                                    <td><%=String.format("%,.2f", v.getMetroscuadrados())%></td>
                                    <td><%=v.getAnyo()%></td>
                                    <td><%=String.format("%,.2f", v.getImpuesto())%></td>
                                    <td><%=v.getNumeropersonas()%></td>
                                </tr>
                                <%}%>
                            </tbody>
                            <tfoot>
                                <tr><th>CODIGO</th><th>MUNICIPIO</th><th>DIRECCION</th><th>METROS CUADRADOS</th><th>A&Ntilde;O CONSTRUCCION</th><th>IMPUESTO</th><th>N� PERSONAS</th></tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
            <br/><br/>
        </div>
        <div class="jumbotron text-center" style="margin-bottom: 0;">
            <p>
                <a href="/RA6_LopezAngel/ControlVivienda?accion=consulta">Consultar Viviendas de un Municipio</a>
            </p>
            <p>
                <a href="menu.html">Inicio</a>
            </p>
        </div>
    </body>
</html>