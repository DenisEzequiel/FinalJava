/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.negocio;
import aplicacion.modelo.datos.UsuarioBD;
import aplicacion.modelo.entidades.Usuario;
import java.util.ArrayList;

/**
 *
 * @author JP
 */
public class CatalogoDeUsuarios
{
    UsuarioBD usuarios;
    public Usuario buscarUsuario(String nombre, String contra) throws Exception
    { 
        usuarios = new UsuarioBD();
        Usuario usu = null;
        usu = usuarios.buscarUsuario(nombre, contra);
        return usu;
    }
    
    public ArrayList<Usuario> buscarUsuarios(Usuario usu) throws Exception
    {
        usuarios = new UsuarioBD();
        return usuarios.buscarUsuarios(usu);
    }
    
    public ArrayList<Usuario> obtenerUsuarios() throws Exception
    {
        usuarios = new UsuarioBD();
        return usuarios.obtenerUsuarios();
    }
    
    public void registrarUsuario(Usuario usu) throws Exception
    {
        usuarios = new UsuarioBD();
        usuarios.registrarUsuario(usu);   
    }
    
    public void agregarUsuario(Usuario usu) throws Exception
    {
        usuarios = new UsuarioBD();
        usuarios.agregarUsuario(usu);
    }
    
    public void editarUsuario(Usuario usu) throws Exception
    {
        usuarios = new UsuarioBD();
        usuarios.editarUsuario(usu);
    }
    
    public void modificarUsuario(Usuario usu) throws Exception
    {
        usuarios = new UsuarioBD();
        usuarios.modificarUsuario(usu);
    }
    
    public boolean modificarContrasenia(int id,String contrasenia) throws Exception
    {
        usuarios = new UsuarioBD();
        return usuarios.modificarContrasenia(id,contrasenia);
    }
}
