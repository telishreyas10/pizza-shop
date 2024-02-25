<%-- 
    Document   : logout
    Created on : 1 Nov, 2017, 9:48:46 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<!DOCTYPE html>
<%
Cart.list=new ArrayList<Cart>();
    
session.invalidate();  

response.sendRedirect("index.jsp");
%>
