<%-- 
    Document   : admin
    Created on : 18 Oct, 2018, 9:17:02 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
		<form method="post" id="login-form" style="text-align: center;font-size: 40px;color:#EF0022" action="adminpanel.jsp"><u>ADMIN LOGIN</u>
			<table id="login-table">
			<tr><td>Username  </td> <td><input type="text" name="uname1" required></td></tr>
			<tr><td>Password </td><td><input type="Password" name="upass1" required></td></tr>
                        
                        <%   
                            if(request.getParameter("Login")!=null){
                                
                     
                            try{
                                String user_name=request.getParameter("uname1");
                                String user_pass=request.getParameter("upass1");
                               if(user_name.equals("admin") && user_pass.equals("admin")){
                                     response.sendRedirect("adminpanel.jsp");
                                    }
                             

                            }
                            catch(Exception e){
                                
                            }
                            }
                        %>
                        </table>
                        <div style="margin-right: 200px;"><input type="submit" value="Login" id="btn-addtocart"></div>
		</form>
		</div>
	</body>
</html>