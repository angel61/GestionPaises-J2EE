<%@page import="datos.Municipio"%>
<%@page import="datos.Municipio"%>
<%@page import="datos.Municipio"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ALTA DE VIVIENDAS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <jsp:useBean id="vivi" scope="request" 
                 class="pantalla.Vivienda" />
    <jsp:setProperty name="vivi" property="*"/>

    <%if (request.getParameter("codigo") != null) {%>
    
    <jsp:forward page="/ControlVivienda?accion=insertar"/>
    <% }%>

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
            <center><h2>ENTRADA DE DATOS DE VIVIENDAS</h2>
            </center>
        </div>

        <div class="container p-30" style="padding-top: 30px;padding-bottom:  30px;">
            <form method="post">

                <div class="row">
                    <div class="col-sm-5"> 
                        <div class="form-group">
                            <p>C&oacute;digo de vivienda:
                                <input class="form-control" name="codigo"  required 
                                       type="number"  min="1" max="99999999999"               
                                       size="11"  /> 
                            </p>
                        </div>
                        <div class="form-group">


                            <p>Nombre de municipio:              
                                <select class="form-control"  name="nombremunicipio">
                                    <%
                                        ArrayList listamunicipio = (ArrayList) request.getAttribute("municipios");
                                        if (listamunicipio != null)
                                            for (int i = 0; i < listamunicipio.size(); i++) {
                                                Municipio p = (Municipio) listamunicipio.get(i);%>
                                    <option value= <%=p.getNombre()%> > 
                                        <%=p.getNombre()%>
                                    </option>
                                    <%}%>
                                </select> 
                            </p>
                        </div>
                        <div class="form-group">
                            <p>Direccion: 
                                <input class="form-control" name="direccion" 
                                       required type="text" size="70" maxlength="70" /> 
                            </p>
                        </div> 
                        <div class="form-group">
                            <p>Metros cuadrados:
                                <input class="form-control" name="metroscuadrados"  required 
                                       type="number"  min="0" max="999999"  step="any"               
                                       size="6"  /> 
                            </p>
                        </div>
                        <div class="form-group">
                            <p>A&ntilde;o de construccion:
                                <input class="form-control" name="anyo"  required 
                                       type="number"  min="0" max="999999"               
                                       size="6"  /> 
                            </p>
                        </div>
                        <div class="form-group">
                            <p>Impuesto:
                                <input class="form-control" name="impuesto"  required 
                                       type="number"  min="0" max="999999"  step="any"               
                                       size="6"  /> 
                            </p>
                        </div>
                        <div class="form-group">
                            <p>N&uacute;mero de personas:
                                <input class="form-control" name="numeropersonas"  required 
                                       type="number"  min="0" max="99999999999"               
                                       size="11"  /> 
                            </p>
                        </div>
                        <div class="btn-group">  
                            <input class="btn btn-dark" type="submit" name="insertar" 
                                   value="Insertar vivienda" />
                            <input class="btn btn-dark" type="reset" name="cancelar" 
                                   value="Cancelar entrada" />
                        </div>
                    </div></div>
            </form>  
        </div>


        <div class="jumbotron text-center" style="margin-bottom: 0;">
            <a href="menu.html">Inicio</a>
        </div>
    </body>
</html>


