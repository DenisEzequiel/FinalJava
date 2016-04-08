/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.entidades;

import java.util.Date;

/**
 *
 * @author JP
 */
public class Pelicula 
{
    private int idPelicula;
    private String sinopsis;
    private String nombre;
    private int duracion;
    private String formato;
    private String reparto;
    private String urlTrailer;
    private int stockVenta;
    private int stockAlquiler;
    private Date fechaCarga;
    private boolean activo;
    private float precioVenta;
    //private String imagen;

    /**
     * @return the idPelicula
     */
    public int getIdPelicula() {
        return idPelicula;
    }

    /**
     * @param idPelicula the idPelicula to set
     */
    public void setIdPelicula(int idPelicula) {
        this.idPelicula = idPelicula;
    }

    /**
     * @return the sinopsis
     */
    public String getSinopsis() {
        return sinopsis;
    }

    /**
     * @param sinopsis the sinopsis to set
     */
    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the duracion
     */
    public int getDuracion() {
        return duracion;
    }

    /**
     * @param duracion the duracion to set
     */
    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    /**
     * @return the formato
     */
    public String getFormato() {
        return formato;
    }

    /**
     * @param formato the formato to set
     */
    public void setFormato(String formato) {
        this.formato = formato;
    }

    /**
     * @return the reparto
     */
    public String getReparto() {
        return reparto;
    }

    /**
     * @param reparto the reparto to set
     */
    public void setReparto(String reparto) {
        this.reparto = reparto;
    }

    /**
     * @return the urlTrailer
     */
    public String getUrlTrailer() {
        return urlTrailer;
    }

    /**
     * @param urlTrailer the urlTrailer to set
     */
    public void setUrlTrailer(String urlTrailer) {
        this.urlTrailer = urlTrailer;
    }

    /**
     * @return the stockVenta
     */
    public int getStockVenta() {
        return stockVenta;
    }

    /**
     * @param stockVenta the stockVenta to set
     */
    public void setStockVenta(int stockVenta) {
        this.stockVenta = stockVenta;
    }

    /**
     * @return the stockAlquiler
     */
    public int getStockAlquiler() {
        return stockAlquiler;
    }

    /**
     * @param stockAlquiler the stockAlquiler to set
     */
    public void setStockAlquiler(int stockAlquiler) {
        this.stockAlquiler = stockAlquiler;
    }

    /**
     * @return the fechaCarga
     */
    public Date getFechaCarga() {
        return fechaCarga;
    }

    /**
     * @param fechaCarga the fechaCarga to set
     */
    public void setFechaCarga(Date fechaCarga) {
        this.fechaCarga = fechaCarga;
    }

    /**
     * @return the activo
     */
    public boolean isActivo() {
        return activo;
    }

    /**
     * @param activo the activo to set
     */
    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    /**
     * @return the precioVenta
     */
    public float getPrecioVenta() {
        return precioVenta;
    }

    /**
     * @param precioVenta the precioVenta to set
     */
    public void setPrecioVenta(float precioVenta) {
        this.precioVenta = precioVenta;
    }
}
