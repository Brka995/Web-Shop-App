package data;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author nez
 */
public class Tabela {
    
    private int itemID;
    private int quantity;
    private double price;
    private char pay;
    private String name;

    public Tabela(int itemID,  String name, int quantity, double price, char pay) {
        this.itemID = itemID;
        this.quantity = quantity;
        this.price = price;
        this.pay = pay;
        this.name = name;
        
        
    }
    

    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public char getPay() {
        return pay;
    }

    public void setPay(char pay) {
        this.pay = pay;
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = name;
    }
       
    
}
