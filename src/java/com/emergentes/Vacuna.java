package com.emergentes;
public class Vacuna 
{
    private int id;
    private String nombre;
    private int peso;
    private double talla;
    private String vacuna;

    public Vacuna() 
    {
         this.id = 0;
         this.nombre = "";
         this.peso = 0;
         this.talla = 0.0; 
         this.vacuna = "";
         
    }

    public String getVacuna() {
        return vacuna;
    }

    public void setVacuna(String vacuna) {
        this.vacuna = vacuna;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public double getTalla() {
        return talla;
    }

    public void setTalla(double talla) {
        this.talla = talla;
    }

}
