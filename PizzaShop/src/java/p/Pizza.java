/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p;
import java.util.*;
/**
 *
 * @author Shreyas
 */
public class Pizza 
{
    public String pizzaname;
    public double pizzaprice;
    public double crustprice;
    public double vtopprice;
    public double ntopprice;
    
    public double totalamount;
    public String crustname;
    public String[] vtoppings;
    public String[] ntoppings;
    
    public boolean Paneer;
    public boolean Mushrooms;
    public boolean Olives;
    public boolean Jalapeno;
    public boolean Chillies;
    
    public boolean ChickenBBQ;
    public boolean Sausages;
    public boolean Bacon;
    public boolean Chunky;
    
    
    //public Pizza(String pizzaname,String crustname)
    public Pizza(String pizzaname,String crustname,boolean Paneer,boolean Mushrooms,boolean Olives,boolean Jalapeno,boolean Chillies,boolean ChickenBBQ,boolean Sausages,boolean Bacon,boolean Chunky)
    {
        this.crustname=crustname;
        this.pizzaname=pizzaname;
        this.Paneer=Paneer;
        this.Mushrooms=Mushrooms;
        this.Jalapeno=Jalapeno;
        this.Chillies=Chillies;
        this.ChickenBBQ=ChickenBBQ;
        this.Sausages=Sausages;
        this.Chunky=Chunky;
        this.Bacon=Bacon;
        this.Olives=Olives;
        //this.vtoppings=vtoppings;
        //this.ntoppings=ntoppings;
        pizzaprice=0;
        vtopprice=0;
        ntopprice=0;
        setcost();
    }
  
    public void setcost()
    {
    
    if(pizzaname.equals("Margherita")){
    pizzaprice=80;
    }
else if(pizzaname.equals("Farmhouse")){
    pizzaprice=120;
}
else if(pizzaname.equals("Peppy Paneer")){
    pizzaprice=120;
}
else if(pizzaname.equals("Deluxe Veggie")){
    pizzaprice=180;
}
else if(pizzaname.equals("Veg Extravaganza")){
    pizzaprice=240;
}
    /* non veg pizza  */
else if(pizzaname.equals("Chicken Tikka")){
    pizzaprice=120;
}    
else if(pizzaname.equals("Chicken Golden Delight")){
    pizzaprice=140;
}
else if(pizzaname.equals("Peri Peri Chicken")){
    pizzaprice=140;
}
else if(pizzaname.equals("Non-Veg Supreme")){
    pizzaprice=220;
}
else if(pizzaname.equals("Cheese Pepperoni")){
    pizzaprice=240;
}    
    /*Crust*/
    if(crustname.equals("Pan Tossed")){
        pizzaprice=pizzaprice+0;
    }
    else if(crustname.equals("Cheese Burst")){
        pizzaprice=pizzaprice+40;
    }
    else if(crustname.equals("Italian Crust")){
        pizzaprice=pizzaprice+60;
    }
    
   
    
    /*if(vtoppings.equals("Paneer")){
    pizzaprice=pizzaprice+40;
}
else if(vtoppings.equals("Mushroom")){
    pizzaprice=pizzaprice+40;
}
else if(vtoppings.equals("Olives")){
    pizzaprice=pizzaprice+40;
}
else if(vtoppings.equals("Jalapeno")){
    pizzaprice=pizzaprice+40;
}
else if(vtoppings.equals("Chillies")){
    pizzaprice=pizzaprice+40;  
}
else if(vtoppings.equals(null) && vtoppings.equals("")){
    pizzaprice-=pizzaprice+0;
}*/
    
/*if(ntoppings.equals("ChickenBBQ")){
    pizzaprice=pizzaprice+60;
}
else if(ntoppings.equals("Sausages")){
    pizzaprice=pizzaprice+60;
}
else if(ntoppings.equals("Bacon")){
    pizzaprice=pizzaprice+60;
}
else if(ntoppings.equals(Chunky)){
    pizzaprice=pizzaprice+60;
}
else if(ntoppings.equals(null) && ntoppings.equals("")){
    pizzaprice-=pizzaprice+0;
}*/
  

    /*Veg topings*/
    if(Paneer==true){
         
}
    if(Mushrooms=true)
    {
        vtopprice=40;
    }
     if(Olives==true)
    {
         
    }
     if(Jalapeno==true)
    {
         
    }
     if(Chillies==true)
    {
        
    }
    
    
    /*non-veg topings */
   if(ChickenBBQ==true)
    {
       
    }
    if(Sausages==true)
    {
        
    }
     if(Bacon==true)
    {
        
    }
     if(Chunky==true)
    {
         
    }
  
     pizzaprice=pizzaprice+vtopprice;
    }
    
    
    
}


    
 