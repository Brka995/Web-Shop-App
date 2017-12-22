/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author nez
 */
public class Proizvodi {
private String proizvod;
private int cena;
private int proizvod_id;

    public Proizvodi(String proizvod, int cena, int proizvod_id) {
        this.proizvod = proizvod;
        this.cena = cena;
        this.proizvod_id = proizvod_id;
    }

    public String getProizvod() {
        return proizvod;
    }

    public void setProizvod(String proizvod) {
        this.proizvod = proizvod;
    }

    public int getCena() {
        return cena;
    }

    public void setCena(int cena) {
        this.cena = cena;
    }

    public int getProizvod_id() {
        return proizvod_id;
    }

    public void setProizvod_id(int proizvod_id) {
        this.proizvod_id = proizvod_id;
    }



}
