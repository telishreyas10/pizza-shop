<%-- 
    Document   : end
    Created on : 15 Nov, 2017, 11:13:26 AM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@page import="n.Cart"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%!double finalamount;
Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000);
    double deliverycharges=35;
    String vtopnames="";
    String ntopnames="";
    String order_details=""; 
    String fname,lname,address;
    Date d;
    String ordertime;
    int i;
    int count;
    public static class SMTPAuthenticator extends Authenticator{
        public PasswordAuthentication getPasswordAuthentication(){
            return new PasswordAuthentication("shop.slicespizza","dhakangomesteli");
}
}
%>

<%
    for(Cart cart : Cart.list)
                            { 
                                
                                if(cart.vtoppings!=null)
{
                                        for(i=0;i<cart.vtoppings.length;i++){
                                        vtopnames+=cart.vtoppings[i]+",";
                                        }
}
                                if(cart.ntoppings!=null)
{
                                        for(i=0;i<cart.ntoppings.length;i++){
                                        ntopnames+=cart.ntoppings[i]+",";
                                        }
}
                                count=cart.list.size();
                                
                              order_details+="Pizza: "+cart.getpizzaname()+" Crust: "+cart.getcrustname()+" Toppings: "+vtopnames+""+ntopnames+"\n"; %>
                              <br>
                          <%  }
%>

<% finalamount=Double.parseDouble(session.getAttribute("finalamount").toString());
finalamount+=deliverycharges;

    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    d=new Date();
    ordertime=formatter.format(d).toString();
    
      try{
                     
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
    
    String query = "insert into order_details(user_name,user_orders,user_totalamount,orderid,feedback,order_time) values(?,?,?,?,?,?)";
   PreparedStatement ps2=con.prepareStatement(query);
    ps2.setString(1,session.getAttribute("user_name").toString());
    ps2.setString(2,order_details);
    ps2.setDouble(3,finalamount);
    ps2.setInt(4,randomInt);
    ps2.setString(5,"");
    ps2.setString(6,ordertime);
    ps2.execute();
    con.close();
     }
   catch(Exception e)
   {
            out.println("ERROR"+e);
    }
     
%>
<%try{
                          
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String URL="jdbc:derby://localhost:1527/pizzaDB;user=root;password=root";
    Connection con =null;
    con = DriverManager.getConnection(URL);
      String query ="select * from user_info where u_uname='"+session.getAttribute("user_name")+"'";
                                PreparedStatement ps=con.prepareStatement(query);
                                ResultSet rs=ps.executeQuery();
                                while(rs.next()){
                                fname=rs.getString(1);
                                lname=rs.getString(2);
                                address=rs.getString(6);
                                } con.close();
                                 }
                    catch(Exception e)
   {
        System.out.println("ERROR CONNECTION" +e);
    }
   %>
<!DOCTYPE html>

<%
    
%>
<%
    int result=0;
    
    String d_uname="shop.slicespizza";
    String d_password="dhakangomesteli";
    String d_host="smtp.gmail.com";
    int d_port=465;
    
    String m_to=(String)session.getAttribute("email");
    String m_from="shop.slicespizza@gmail.com";
    String m_subject="Your Pizza Order Details";
    String m_text=("Hello, "+fname+" "+lname);
    m_text=m_text.concat("<br>Total Items: "+count);
    m_text=m_text.concat("<br>Amount: "+finalamount);
    m_text=m_text.concat("<br>Address: "+address);
    
    Properties props = new Properties();
    SMTPAuthenticator auth= new SMTPAuthenticator();
    Session ses= Session.getInstance(props,auth);
    MimeMessage msg = new MimeMessage(ses);
    msg.setContent(m_text,"text/html");
    msg.setSubject(m_subject);
    msg.setFrom(new InternetAddress(m_from));
    msg.addRecipient(Message.RecipientType.TO,new InternetAddress(m_to));
    
    try{
            Transport transport = ses.getTransport("smtps");
            transport.connect(d_host,d_port,d_uname,d_password);
            transport.sendMessage(msg,msg.getAllRecipients());
            result = 1;
    }
    catch(Exception e){
        out.println(e);
    }
    
response.sendRedirect("thankyou.jsp");
%>
