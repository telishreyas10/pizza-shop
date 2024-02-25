<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="n.Cart"%>
<%@ page import="java.sql.*"%>

<%! int crustprice=0;
    int vtopprice=0;
    int ntopprice=0;
    int pizzaprice=0;
    double totalprice;
    double totalamount=0;
    double finalamount=0;
    int i;   
    String username;
    String pizzaname="";
    String crustname="";
    String[] vtoppings;
    String vtopnames="";
    String ntopnames="";
    String[] ntoppings;
    String pizzatype="";
    int count;
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
        <%--ArrayList<Cart> list=(ArrayList<Cart>)session.getAttribute("list");--%>
        
        <%
            
            if ((session.getAttribute("user_name") == null) || (session.getAttribute("user_name") == "")) 
{
    response.sendRedirect("register.jsp");
} 
else{  
 
 crustname="Pan Tossed";           
username=(String)session.getAttribute("user_name");
pizzaname=(String)session.getAttribute("pizzaname");    
pizzaprice=Integer.parseInt(session.getAttribute("pizzaprice").toString()); 
crustname=request.getParameter("crust");
vtoppings=request.getParameterValues("vegtop");
ntoppings=request.getParameterValues("nonvegtop");
pizzatype=(String)session.getAttribute("pizzatype");


if(crustname!=null)
{
if(crustname.equals("Pan Tossed")){
           
            crustprice=0;
        }
        else if(crustname.equals("Cheese Burst")){
            
            crustprice=40;
        }
        else if(crustname.equals("Italian Crust")){
            
            crustprice=60;
        }
        else if(crustname.equals("") && crustname.equals(null)){
            out.println("Please Choose a crust");
        }
}
else{
   crustname="Pan Tossed"; 
}

vtopnames="a";
int  vtop=0;
if(vtoppings!=null)
{
    for(i=0;i<vtoppings.length;i++)
        {
           if(vtoppings[i] != null) 
           {
            vtopnames += ","+vtoppings[i];
           }
            vtop=vtoppings.length;
            vtopprice= vtop*40;
            
        }
}
else{
    vtopprice=0;
}

if(ntoppings!=null){
    for(i=0;i<ntoppings.length;i++)
        {
            if(ntoppings[i] != null) {
            ntopnames += ","+ntoppings[i];
            }
            int ntop=ntoppings.length;
             ntopprice= ntop*60;
        }
}
else{
    ntopprice=0;
}

totalprice=pizzaprice+crustprice+vtopprice+ntopprice;

       

        
//
//      try{
//                      
//    Class.forName("org.apache.derby.jdbc.ClientDriver");
//    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
//    Connection con =null;
//    con = DriverManager.getConnection(URL);
//    String query = "insert into cart(user_name,pizza_name,pizza_price,pizza_type,pizza_totalprice,pizza_vtopprice,pizza_ntopprice,pizza_crustname,pizza_vtoppings,pizza_ntoppings) values(?,?,?,?,?,?,?,?,?,?)";
//    PreparedStatement ps2=con.prepareStatement(query);
//    ps2.setString(1,username);
//    ps2.setString(2,pizzaname);
//    ps2.setInt(3,pizzaprice);
//    ps2.setString(4,pizzatype);
//    ps2.setDouble(5,totalprice);
//    ps2.setInt(6,vtopprice);
//    ps2.setInt(7,ntopprice);
//    ps2.setString(8,crustname);
//    ps2.setString(9,vtopnames);
//    ps2.setString(10,ntopnames);
//    ps2.execute();
//     
//     }
//   catch(Exception e)
//   {
//            out.println("ERROR"+e);
//    }
// 



    Cart.list.add(new Cart(username,pizzaname,pizzaprice,crustname,pizzatype,vtoppings,vtopprice,ntoppings,ntopprice,totalprice));
    
    count=Cart.list.size();
    session.setAttribute("count",count);


        response.sendRedirect("index.jsp");
    }
%>
