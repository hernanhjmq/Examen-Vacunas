
<%@page import="com.emergentes.Vacuna"%>
<%@page import="com.emergentes.VacunaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%
            VacunaDAO lista = (VacunaDAO)session.getAttribute("gestor");
        %>
        <h1>NOMBRE: HERNAN JAVIER MOLLERICONA QUISPE</h1>
        <h1>CARNET: 12801082</h1>
        <h1>REGISTRO DE VACUNAS</h1>
        <p><a href="Proceso_principal?op=nuevo">Nuevo</a></p>
        <%
            if (lista.getVacunas().size() > 0)
            {    
        %>
        <table border = "1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th style="color: green;">EIDTAR</th>
                <th style="color: red;"> ELIMINAR</th>
                
            </tr>
        <%
            for(Vacuna item : lista.getVacunas()){
                
        %>  
             <tr>
                <th><%= item.getId()  %></th>
                <th><%= item.getNombre()%></th>
                <th><%= item.getPeso()%></th>
                <th><%= item.getTalla()%></th>
                 <th><%= item.getVacuna()%></th>
           
                <th><a href="Proceso_principal?op=editar&id=<%= item.getId()  %>">Editar</a></th>
                <th><a href="Proceso_principal?op=eliminar&id=<%= item.getId()  %>">Eliminar</a></th>
              
            </tr>
             <%
            }
            %>  
        </table>
              <%
            }
            else{
                   out.println("<p> no existen registros");
                    }
            
            %>
            
    </body>
</html>
