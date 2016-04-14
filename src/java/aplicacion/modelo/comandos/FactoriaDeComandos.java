/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacion.modelo.comandos;

import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JP
 */
public class FactoriaDeComandos {
    public static FactoriaDeComandos instancia; 
    private Comando comando;
    private HashMap<String, Class<?>> mapa;
    
    
    //constructor singleton
    private FactoriaDeComandos()
    { 
        mapa=new HashMap<String, Class<?>>();
        mapa.put("login",LogIn.class);
       
        
    }
    public static FactoriaDeComandos getInstancia()
    {
    if( instancia ==null)
    { instancia=new FactoriaDeComandos();
    }
       return instancia;}
    
    public Comando buscarComando(String nom) 
    { 
        Comando c=null;
        try
        {
            c =(Comando)mapa.get(nom).newInstance();
        }
        catch(InstantiationException e)
        {
            
        }
        catch(IllegalAccessException e)
        {
            
        }
        
        return c;
        
        
    }
    
}
