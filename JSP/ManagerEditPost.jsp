<%-- 
    Document   : ManagerEditPost
    Created on : Aug 8, 2015, 11:10:38 PM
    Author     : Thang
--%>

<%@page import="model.Sala"%>
<%@page import="dao.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idTemp = request.getParameter("id");
            String naziv = request.getParameter("naziv");
            String brojRedovaStr = request.getParameter("brojRedova");
            String brojSedistaStr = request.getParameter("brojSedista");
            try
            {
            int id = Integer.parseInt(idTemp);
            int brojRedova=Integer.parseInt(brojRedovaStr);
            int brojSedista=Integer.parseInt(brojSedistaStr);
            DataAccess da = new DataAccess(); 
            da.edit(id, naziv, brojRedova, brojSedista);
            response.sendRedirect("/WebApplication2/AllPost");
            }
            catch(Exception ex)
            {
             response.sendRedirect("/WebApplication2/Error");
            }
        %>
    </body>
</html>
