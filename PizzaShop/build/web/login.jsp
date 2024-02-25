<%-- 
    Document   : login
    Created on : 16 Oct, 2017, 6:06:28 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>

<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="style.css">
	</head>
	<body>
            
            <div id="nav">
			<a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
	</div>
		<div id="login">
		<form method="post" id="login-form" style="text-align: center;font-size: 40px;color:#EF0022" action="login.jsp"><u>LOGIN</u>
			<table id="login-table">
			<tr><td>Username  </td> <td><input type="text" name="uname1" required></td></tr>
			<tr><td>Password </td><td><input type="Password" name="upass1" required></td></tr>
                        
                        <%   
                            try{
                                String user_name=request.getParameter("uname1");
                                String user_pass=request.getParameter("upass1");
                                String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
                                Connection con =null;
                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                con = DriverManager.getConnection(URL);
                                
                                String query ="select * from user_info where u_uname=? and u_password=?";
                               PreparedStatement ps=con.prepareStatement(query);
                              ps.setString(1,user_name);
                                ps.setString(2,user_pass);
                                ResultSet rs=ps.executeQuery();
                                if(rs.next()){
                                   String dbuname=rs.getString(3);
                                   String dbfname=rs.getString(1);
                                   
                                   String email=rs.getString(5);
                                    
                                    session.setAttribute("user_name",dbuname);
                                    session.setAttribute("uf_name",dbfname);
                                    session.setAttribute("email",email);
                                    response.sendRedirect("index.jsp");
                                    //session.setAttribute("list",Cart.list);
                                    con.close();
                                    rs.close();
                                    }
                                   
                            }
                            catch(Exception e){
                                
                            }
                        %>
                        </table>
                        <div style="margin-right: 200px;"><input type="submit" value="Login" id="btn-addtocart"></div>
                        
                        
		</form>
		</div>
        
                        <div style="width:50%;height:10%; margin-left:412px;"><center><a href="register.jsp" style="font-size: 20px;">New user? Click here to Register!</a></center></div>
                        
	</body>
</html>