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
        String sql = "SELECT * FROM usuarios where nombre_usuario=? and contrasena=?;";
        try
        {
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, nom);
            pr.setString(2, contra);
            ResultSet res = pr.executeQuery();
            con.close();
            
            if(res.next())
            {
               usu = new Usuario();
               usu.setActivo(res.getBoolean(1));
            }
            
        }catch(SQLException ex)
        {
            
        }
        
        return usu;
    }
}
