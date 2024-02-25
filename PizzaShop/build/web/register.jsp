<%-- 
    Document   : register
    Created on : 16 Oct, 2017, 5:43:26 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="style.css">
       
        
	</head>
	<body>
            <div id="nav">
			<a href="index.jsp"><img src="images\pizza.jpg" id="navimg"></a>
		</div>
		<div id="register">
		<form id="register-form" style="text-align: center;font-size: 40px;color:#EF0022" action="register.jsp" method="post" name="form1"><u>Register</u>
			<table id="register-table">
                        <tr><td>First Name  </td> <td><input type="text" name="fname2" required></td></tr>
                        <tr><td>Last Name  </td> <td><input type="text" name="lname2" ></td></tr>
			<tr><td>UserName  </td> <td><input type="text" name="uname2" required></td></tr>
                        <tr><td>Password </td><td><input type="Password" name="upass2" required></td></tr>
			<tr><td>Email  </td> <td><input type="email" name="uemail" required></td></tr>
                        <tr><td>Mobile  </td> <td><input type="text" name="umobile"></td></tr>
                        <tr><td>Address  </td> <td><input type="text" name="uaddress" style="height:80px;"></td></tr>
                        
                   
 <% 
     if(request.getParameter("regbtn")!=null)
     {
     try
     {    
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    String fname = request.getParameter("fname2");
    String lname = request.getParameter("lname2");
    String uname = request.getParameter("uname2");
    String upass= request.getParameter("upass2");
    String uemail= request.getParameter("uemail");
    String uaddress=request.getParameter("uaddress");
    String umobile=request.getParameter("umobile");
    String query="insert into user_info(u_fname,u_lname,u_uname,u_password,u_email,u_mobile,u_address) values(?,?,?,?,?,?,?)";
    //String query="insert into userInfo(u_name,u_email,u_password,u_mobile) values('a','b','c',9)";
    PreparedStatement ps=con.prepareStatement(query);
     ps.setString(1,fname);
     ps.setString(2,lname);
     ps.setString(3,uname);
     ps.setString(4,upass);
     ps.setString(5,uemail);
     ps.setString(6,""+umobile);
     ps.setString(7,uaddress);
     ps.executeUpdate();
     response.sendRedirect("login.jsp");
     }
   catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
     
     

}
   %>
			
			</table>
                    <div style="margin-right: 200px;"><input type="submit" value="Register" id="btn-addtocart" name="regbtn"></div><br><br>
                            <div style="width:50%;height:10%; margin-left:120px;"><a href="login.jsp" style="font-size: 20px;">Already Have account?</a></div>
		</form>
		</div>
                       
	</body>
</html>
