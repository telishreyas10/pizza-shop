<%-- 
    Document   : display
    Created on : 9 Nov, 2017, 6:40:21 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<%!public static ArrayList<Cart> list;%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.getAttribute("list");%>
        <%for(Cart cart : list){
%>
<br><br>
<%=cart.getpizzaname()%><br>
<%=cart.getpizzaprice()%><br>
<%=cart.getcrustname()%><br>
<%=cart.getvtoppings()%><%=cart.getvtopprice()%><br>
<%=cart.getntoppings()%><%=cart.getntopprice()%><br>
   <br><%=cart.gettotalprice()%><br>
   
 <%}
%>
    </body>
</html>
