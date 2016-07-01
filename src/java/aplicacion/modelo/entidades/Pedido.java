/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.entidades;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author JP
 */
public class Pedido 
{
    private int idPedido;
    private Date fechaRealizacion;
    private Date fechaDesde;
    private Date fechaHasta;
    private String estado;
    private Date fechaDevolucion;
    private float total;
    private ArrayList<LineaPedido> lineas;
    private Usuario usuario;
    public void setLinea(LineaPedido lp)
    {
        getLineas().add(lp);
    }
    
    public Pedido()
    {
        lineas = new ArrayList<LineaPedido>();
        estado = "Activo";
        DateFormat hoyFormato = new SimpleDateFormat("yyyy/MM/dd");      
        Date hoy=new Date();
        hoyFormato.format(hoy);
        fechaRealizacion = hoy;
    }
    /**
     * @return the idPedido
     */
    public int getIdPedido() {
        return idPedido;
    }

    /**
     * @param idPedido the idPedido to set
     */
    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
        
    }
    public Usuario getUsuario() {
        return usuario;
    }
    public void setUsuario(Usuario u) {
        this.usuario = u;
    }

    /**
     * @return the fechaRealizacion
     */
    public Date getFechaRealizacion() {
        return fechaRealizacion;
    }

    /**
     * @param fechaRealizacion the fechaRealizacion to set
     */
    public void setFechaRealizacion(Date fechaRealizacion) {
        this.fechaRealizacion = fechaRealizacion;
    }

    /**
     * @return the fechaDesde
     */
    public Date getFechaDesde() {
        return fechaDesde;
    }

    /**
     * @param fechaDesde the fechaDesde to set
     */
    public void setFechaDesde(Date fechaDesde) {
        this.fechaDesde = fechaDesde;
    }

    /**
     * @return the fechaHasta
     */
    public Date getFechaHasta() {
        return fechaHasta;
    }

    /**
     * @param fechaHasta the fechaHasta to set
     */
    public void setFechaHasta(Date fechaHasta) {
        this.fechaHasta = fechaHasta;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the fechaDevolucion
     */
    public Date getFechaDevolucion() {
        return fechaDevolucion;
    }

    /**
     * @param fechaDevolucion the fechaDevolucion to set
     */
    public void setFechaDevolucion(Date fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    /**
     * @return the lineas
     */
    public ArrayList<LineaPedido> getLineas() {
        return lineas;
    }

    /**
     * @param lineas the lineas to set
     */
    public void setLineas(ArrayList<LineaPedido> lineas) {
        this.lineas = lineas;
    }
}
