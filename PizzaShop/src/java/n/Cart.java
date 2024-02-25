/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package n;

import java.util.ArrayList;

/**
 *
 * @author Shreyas
 */
public class Cart {
    
       public static ArrayList<Cart> list=new ArrayList<Cart>();
    
       public String username;
       public String pizzaname;
       public int pizzaprice;
       public String crustname;
       public int crustprice;
       public String[] vtoppings;
       public int vtopprice;
       public String[] ntoppings;
       public int ntopprice;
       public double totalprice;
       public String pizzatype;
       
       public Cart(String username,String pizzaname,int pizzaprice,String crustname,String pizzatype,String[] vtoppings,int vtopprice,String[] ntoppings,int ntopprice,double totalprice){
        this.pizzaname=pizzaname;
        this.username=username;
        this.pizzaprice=pizzaprice;
        this.crustname=crustname;
        this.vtoppings=vtoppings;
        this.vtopprice=vtopprice;
        this.ntoppings=ntoppings;
        this.ntopprice=ntopprice;
        this.totalprice=totalprice;
        this.pizzatype=pizzatype;
       }
       
       public String getusername(){
           return username;
       }
       
       public String getpizzaname(){
           return pizzaname;
       }
       
       public String getpizzatype(){
           return pizzatype;
       }
       
       public int getpizzaprice(){
           return pizzaprice;
       }
       
       
       public String getcrustname(){
           return crustname;
       }
       
       
       public String[] getvtoppings(){
           return vtoppings;
       }

       public int getvtopprice(){
           return vtopprice;
       }
       
       public String[] getntoppings(){
           return ntoppings;
       }
       
       public int getntopprice(){
           return ntopprice;
       }
       
       
       public double gettotalprice(){
           return totalprice;
       }
       
       
}
