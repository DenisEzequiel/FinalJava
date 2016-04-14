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
}
