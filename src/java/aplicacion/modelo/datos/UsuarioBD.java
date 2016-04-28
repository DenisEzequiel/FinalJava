/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.datos;
import aplicacion.modelo.entidades.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JP
 */
public class UsuarioBD
{
    Conexion conec = new Conexion();
    
    public Usuario buscarUsuario(String nom, String contra)
    {
        Usuario usu=null;
        Connection con = conec.getConexion();
        String sql = "select * from usuarios where nombre_usuario=? and contrasena=?;";
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, nom);
            pr.setString(2, contra);
            ResultSet res = pr.executeQuery();
            
            if(res.next())
            {
                usu = new Usuario();
                usu.setActivo(res.getBoolean(10));
                usu.setApellido(res.getString(3));
                usu.setBloqueado(res.getBoolean(11));
                usu.setContrasena(res.getString(4));
                usu.setDireccion(res.getString(6));
                usu.setDni(res.getString(8));
                usu.setEsAdmin(res.getBoolean(5));
                usu.setFechaNacimiento(res.getDate(9));
                usu.setIdUsuario(res.getInt(1));
                usu.setMail(res.getString(12));
                usu.setNombre(res.getString(2));
                usu.setNombreUsuario(res.getString(13));
                usu.setTelefono(res.getString(7));
            }
            con.close();
            
        }catch(SQLException ex)
        {
            
        }
        System.out.print(usu.getApellido());
        
        return usu;
    }
    
    public void actualizarDatos(int id,String nombre,String apellido,String direccion,String telefono,String mail)
    {
        Connection con = conec.getConexion();
        String sql = "update usuarios set nombre=?,apellido=?,direccion=?,telefono=?,mail=? where id_usuario=?";
   
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, nombre);
            pr.setString(2, apellido);
            pr.setString(3, direccion);
            pr.setString(4, telefono);
            pr.setString(5, mail);
            pr.setInt(6,id);
            pr.executeUpdate();
        }
         catch(SQLException ex)
        {
            
        }
    }
    
    public void actualizarContrasenia(int id,String contra)
    {
        Connection con = conec.getConexion();
        String sql = "update usuarios set contrasena=? where id_usuario=?";
   
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, contra);         
            pr.setInt(2,id);
            pr.executeUpdate();
        }
         catch(SQLException ex)
        {
            
        }
    }
}
