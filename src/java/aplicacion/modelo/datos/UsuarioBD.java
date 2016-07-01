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
import java.util.ArrayList;

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
        String sql = "select * from usuarios where nombre_usuario=? and contrasena=? and activo=1;";
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
        return usu;
    }
    
    public ArrayList<Usuario> obtenerUsuarios()
    {
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        Connection con = conec.getConexion();
        String sql = "select * from usuarios;";
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            ResultSet res = pr.executeQuery();
            
            while(res.next())
            {
                Usuario usu = new Usuario();
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
                
                usuarios.add(usu);
            }
            con.close();
            
        }catch(SQLException ex)
        {
            
        }
        return usuarios;
    }
    
    public void editarUsuario(Usuario usu)
    {
        Connection con = conec.getConexion();
        String sql = "update usuarios set nombre=? , apellido=? , direccion=? ,"
                + " telefono=? , mail=?,dni=?,fecha_de_nacimiento=?,bloqueado=?,activo=?,es_admin=?,nombre_usuario=? where id_usuario=?";
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, usu.getNombre());
            pr.setString(2, usu.getApellido());
            pr.setString(3, usu.getDireccion());
            pr.setString(4, usu.getTelefono());
            pr.setString(5, usu.getMail());           
            pr.setString(6,usu.getDni());
            pr.setDate(7, new java.sql.Date(usu.getFechaNacimiento().getTime()));
            pr.setBoolean(8, usu.isBloqueado());
            pr.setBoolean(9, usu.isActivo());
            pr.setBoolean(10, usu.isEsAdmin());
            pr.setString(11, usu.getNombreUsuario());
            pr.setInt(12,usu.getIdUsuario());
            pr.executeUpdate();
            con.close();
        }
         catch(SQLException ex)
        {
        }
    }
    
    public void modificarUsuario(Usuario usu)
    {   
        
        Connection con = conec.getConexion();
        String sql = "update usuarios set nombre=? , apellido=? , direccion=? ,"
                + " telefono=? , mail=?,dni=?,fecha_de_nacimiento=? where id_usuario=?";
   
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, usu.getNombre());
            pr.setString(2, usu.getApellido());
            pr.setString(3, usu.getDireccion());
            pr.setString(4, usu.getTelefono());
            pr.setString(5, usu.getMail());           
            pr.setString(6,usu.getDni());
            pr.setDate(7, new java.sql.Date(usu.getFechaNacimiento().getTime()));            
            pr.setInt(8,usu.getIdUsuario());
            pr.executeUpdate();
            con.close();
        }
         catch(SQLException ex)
        {
        }
        
    }
    
    public boolean modificarContrasenia(int id,String contra)
    {
        Connection con = conec.getConexion();
        String sql = "update usuarios set contrasena=? where id_usuario=?";
   
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, contra);         
            pr.setInt(2,id);
            pr.executeUpdate();
            con.close();
        }
         catch(SQLException ex)
        {
            return false;
        }
        return true;
    }
    
public void agregarUsuario(Usuario usu)
{
    PreparedStatement prpstmt;
        Connection con = conec.getConexion();
        String transac1 = "insert into aefilep.usuarios values (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try
        {
            prpstmt = con.prepareStatement(transac1);
            prpstmt.setNull(1,0);
            prpstmt.setString(2, usu.getNombre());
            prpstmt.setString(3, usu.getApellido());
            prpstmt.setString(4, usu.getContrasena());
            prpstmt.setBoolean(5, usu.isEsAdmin());
            prpstmt.setString(6, usu.getDireccion());
            prpstmt.setString(7, usu.getTelefono());
            prpstmt.setString(8, usu.getDni());
            prpstmt.setDate(9, new java.sql.Date(usu.getFechaNacimiento().getTime()));
            prpstmt.setBoolean(10, usu.isActivo());
            prpstmt.setBoolean(11, usu.isBloqueado());
            prpstmt.setString(12, usu.getMail());
            prpstmt.setString(13, usu.getNombreUsuario());
            prpstmt.executeUpdate();
            
            con.close();
        }
        catch(SQLException e)
        {
            
        }
}
            
public void registrarUsuario(Usuario usu)
    {
        PreparedStatement prpstmt;
        Connection con = conec.getConexion();
        String transac1 = "insert into aefilep.usuarios values (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try
        {
            prpstmt = con.prepareStatement(transac1);
            prpstmt.setNull(1,0);
            prpstmt.setString(2, usu.getNombre());
            prpstmt.setString(3, usu.getApellido());
            prpstmt.setString(4, usu.getContrasena());
            prpstmt.setInt(5, 0);
            prpstmt.setString(6, usu.getDireccion());
            prpstmt.setString(7, usu.getTelefono());
            prpstmt.setString(8, usu.getDni());
            prpstmt.setDate(9, new java.sql.Date(usu.getFechaNacimiento().getTime()));
            prpstmt.setInt(10, 1);
            prpstmt.setInt(11, 0);
            prpstmt.setString(12, usu.getMail());
            prpstmt.setString(13, usu.getNombreUsuario());
            prpstmt.executeUpdate();
            
            con.close();
        }
        catch(SQLException e)
        {
            
        }
    }
}
