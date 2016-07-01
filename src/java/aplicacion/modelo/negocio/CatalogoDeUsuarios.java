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
    public Usuario buscarUsuario(String nombre, String contra)
    { 
        usuarios = new UsuarioBD();
        Usuario usu = null;
        usu = usuarios.buscarUsuario(nombre, contra);
        return usu;
    }
    
    public ArrayList<Usuario> obtenerUsuarios()
    {
        usuarios = new UsuarioBD();
        return usuarios.obtenerUsuarios();
    }
    
    public void registrarUsuario(Usuario usu)
    {
        usuarios = new UsuarioBD();
        usuarios.registrarUsuario(usu);   
    }
    
    public void agregarUsuario(Usuario usu)
    {
        usuarios = new UsuarioBD();
        usuarios.agregarUsuario(usu);
    }
    
    public void editarUsuario(Usuario usu)
    {
        usuarios = new UsuarioBD();
        usuarios.editarUsuario(usu);
    }
    
    public void modificarUsuario(Usuario usu)
    {
        usuarios = new UsuarioBD();
        usuarios.modificarUsuario(usu);
    }
    
    public boolean modificarContrasenia(int id,String contrasenia)
    {
        usuarios = new UsuarioBD();
        return usuarios.modificarContrasenia(id,contrasenia);
    }
}
