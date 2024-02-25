<%-- 
    Document   : cartadd
    Created on : 13 Nov, 2017, 4:43:06 PM
    Author     : Shreyas
--%>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! int crustprice=0;
    int vtopprice=0;
    int ntopprice=0;
    int pizzaprice=0;
    double totalprice;
    double totalamount=0;
    double finalamount=0;
    int i;  
    int count;
    //String Name;
    String pizzaname;
    String crustname;
    String[] vtoppings;
    String[] ntoppings;
    String pizzatype;
    
    
    String getpizzaname;
    String getpizzatype;
    int getpizzaprice;
    String getcrustname;
    String[] getvtoppings;
    String[] getntoppings;
    int getvtopprice;
    int getntopprice;
    double gettotalprice=0;
    double gettotalamount=0;
    double getfinalamount=0;
    //boolean Paneer=false;
   // boolean Mushrooms=false;
    //boolean Olives=false;
    //boolean Jalapeno=false;
    //boolean Chillies=false;
    
    //boolean ChickenBBQ=false;
    //boolean Sausages=false;
    //boolean Bacon=false;
    //boolean Chunky=false;
    %>
<%
    ArrayList<Cart> list=(ArrayList<Cart>)session.getAttribute("list");

for(Cart cart : list){
        getpizzaname=cart.getpizzaname();
        getpizzatype=cart.getpizzatype();
        getcrustname=cart.getcrustname();
        getpizzaprice=cart.getpizzaprice();
        

                                    if(cart.ntoppings!=null){
                                    for( i=0;i<cart.ntoppings.length;i++)
                                        { 
                                            getntoppings[i]=cart.ntoppings[i];
                                        }
                                        }
                                    if(cart.vtoppings!=null){
                                    for( i=0;i<cart.vtoppings.length;i++)
                                        { 
                                            getvtoppings[i]=cart.vtoppings[i];
                                        }
  
                                    }
                                    gettotalamount=cart.gettotalprice();
                                    getfinalamount+=gettotalamount;
                                    


session.setAttribute("getpizzaname",getpizzaname);
session.setAttribute("getpizzatype",getpizzatype);
session.setAttribute("getcrustname",getcrustname);
session.setAttribute("getpizzaprice",getpizzaprice);
session.setAttribute("getntoppings",getntoppings);
session.setAttribute("getvtoppings",getvtoppings);

session.setAttribute("gettotalamount",getfinalamount);

response.sendRedirect("displaycart.jsp");
}
%>