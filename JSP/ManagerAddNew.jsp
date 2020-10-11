<%-- 
    Document   : ManagerAddNew
    Created on : Aug 8, 2015, 10:38:33 PM
    Author     : Thang
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.Sala"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String naziv = request.getParameter("naziv");
            String brojRedovaStr = request.getParameter("brojRedova");
            String brojSedistaStr = request.getParameter("brojSedista");
            try
            {
            int brojRedova=Integer.parseInt(brojRedovaStr);
            int brojSedista=Integer.parseInt(brojSedistaStr);
            Sala n = new Sala(naziv, brojRedova, brojSedista);
            DataAccess da = new DataAccess(); 
            da.addNew(n);
            response.sendRedirect("/WebApplication2/AllPost");
            }
            catch(Exception ex)
            {
               response.sendRedirect("/WebApplication2/Error");
            }

        %>
        
    </body>
</html>
