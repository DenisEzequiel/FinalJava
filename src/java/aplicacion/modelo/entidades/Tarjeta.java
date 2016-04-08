/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.entidades;

/**
 *
 * @author JP
 */
public class Tarjeta {

    private String idTarjeta;
    private int codigoDeSeguridad;
    private String descripcion;

    /**
     * @return the idTarjeta
     */
    public String getIdTarjeta() {
        return idTarjeta;
    }

    /**
     * @param idTarjeta the idTarjeta to set
     */
    public void setIdTarjeta(String idTarjeta) {
        this.idTarjeta = idTarjeta;
    }

    /**
     * @return the codigoDeSeguridad
     */
    public int getCodigoDeSeguridad() {
        return codigoDeSeguridad;
    }

    /**
     * @param codigoDeSeguridad the codigoDeSeguridad to set
     */
    public void setCodigoDeSeguridad(int codigoDeSeguridad) {
        this.codigoDeSeguridad = codigoDeSeguridad;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
