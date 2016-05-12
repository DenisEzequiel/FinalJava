package aplicacion.modelo.comandos;

import java.util.HashMap;
/**
 * La clase contiene los metodos necesarios para buscar el comando a ejecutar
 * en la aplicacion, cuenta con un hash map el cual contiene los pares
 * clave-valor para la obtencion de la clase correspondiente
 * @author JP
 */
public class FactoriaDeComandos
{
    public static FactoriaDeComandos instancia; 
    private final HashMap<String, Class<?>> mapa;
    
    //constructor singleton
    private FactoriaDeComandos()
    { 
        mapa=new HashMap<>();
        mapa.put("LogInComando",LogInComando.class);
        mapa.put("CuentaComando",CuentaComando.class);
        mapa.put("RegistroComando", RegistroComando.class);
        mapa.put("PeliculasComando", PeliculasComando.class);
        mapa.put("AgregarPeliculaComando", AgregarPeliculaComando.class);
        mapa.put("ContactoComando",ContactoComando.class);
    }
    /**
     * Metodo de clase devuelve la instancia de FactoriaDeComandos
     * @return Devuelve la instancia de FactoriaDeComandos
     */
    public static FactoriaDeComandos getInstancia()
    {
        if( instancia ==null)
            instancia=new FactoriaDeComandos();
        
        return instancia;
    }
    
    /**
     * Llega el nombre del comando por parametro, busca el correspondiente en
     * el mapa e instancia la clase que corresponde, devuelve una instancia
     * de comando
     * @param nom {@code String} nombre del comando
     * @return Si la clase es instanciada devuelve un {@code Comando} si ocurre 
     * una excepcion devuelve {@code "null"}
     */
    public Comando buscarComando(String nom) 
    { 
        Comando c=null;
        try
        {
            c =(Comando)mapa.get(nom).newInstance();
        }
        catch(InstantiationException | IllegalAccessException e)
        {
            
        }     
        return c;       
    }   
}
