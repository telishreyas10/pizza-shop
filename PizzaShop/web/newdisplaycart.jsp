<%-- 
    Document   : newdisplaycart
    Created on : 14 Nov, 2017, 10:24:32 AM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
        String query ="select * from cart where user_name='"+session.getAttribute("user_name")+"'";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();
                                while(rs.next()){%>
                                    <%=rs.getString(2)%>
                                    <%=rs.getString(3)%>
                                <%}
                                con.close();
                                 }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
        %>
        
        <form action="removepizza.jsp" method="POST">
            <input type="submit" value="Remove" name="removeitem">
        </form>
    </body>
</html>
