/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.negocio;
import aplicacion.modelo.datos.UsuarioBD;
import aplicacion.modelo.entidades.Usuario;

/**
 *
 * @author JP
 */
public class CatalogoDeUsuarios
{
    UsuarioBD usuarios;
    public Usuario buscarUsuario(String nombre, String contra)
    { 
        Usuario usu = null;
        usu = usuarios.buscarUsuario(nombre, contra);
        return usu;
    }
}
