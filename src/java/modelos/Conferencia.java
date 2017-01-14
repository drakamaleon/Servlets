/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.util.ArrayList;
import java.util.Date;


public class Conferencia {
    private static ArrayList<Conferencia> conferencias= new ArrayList();
    int id;
    String nombre;
    String descripcion;
    Date fecha;
   
    public Conferencia(int id,String nombre, String descripcion, Date fecha) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fecha = fecha;
    }
    public static boolean insertar(String nombre, String descripcion, Date fecha){
        conferencias.add(con);
        return true;
    }
    public static ArrayList<Conferencia> conferencias(){
        //codigo de lecturas y generacion de arraylist de conferencias
        return Conferencia.conferencias;
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    
}
