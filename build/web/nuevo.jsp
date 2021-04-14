<%@page import="com.emergentes.Vacuna"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
         <%
            Vacuna item = (Vacuna) request.getAttribute("item");
        %>
        <h1>NUEVO REGISTRO DE VACUNAS</h1>
        <form action="Proceso_principal" method="post">
            id: <input type="text" name="id" value="<%= item.getId()%>" size="2" pattern="[1-9]{1}[0-9]*" />
            <input type="hidden" name="tipo" value="-1" required/>
            <p>
                 Nombre : <input type = "text" name = "nombre" value="<%= item.getNombre()%>"/>
             </p>
              <p>
                  Peso: <input type = "number" name = "peso" value="<%= item.getPeso()%>"/>
             </p>
             <p>
                 Talla <input type = "number" name = "talla" step="any" value="<%= item.getTalla()%>"/>
             </p>
             
             Vacuna:  <input type="radio" name="estado_vacuna" value="si" <%= (item.getVacuna()== "si")? "checked":"" %> required  /> si
                      <input type="radio" name="estado_vacuna" value="no" <%= (item.getVacuna()== "no")? "checked":"" %> required  /> no
                
                      <p> <input type = "submit" name = "enviar" value="REGISTRAR"/> </p>
            
        </form>
                        <a href="inicio.jsp"> Volver</a>
    </body>
</html>
