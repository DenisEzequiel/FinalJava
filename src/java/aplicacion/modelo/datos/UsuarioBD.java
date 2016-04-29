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
    
    public void registrarUsuario(Usuario usu)
    {
        PreparedStatement prpstmt;
        Connection con = conec.getConexion();
        String transac = "insert into aefilep.usuarios values (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try
        {
            prpstmt = con.prepareStatement(transac);
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
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
}
