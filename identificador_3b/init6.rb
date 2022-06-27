require 'rest-client' #se llama a la librería RestClient
require 'json' #se llama a la librería JSON

#---------------------------Método url------------------------------------------------
=begin
    En este método se arman las url de los indicadores que se quieren consultar.
    Se llama a las librerías RestClient y JSON par acceder a los datos mas recientes desde la Api de mindicador.cl.
    Se consulta la fecha más reciente del indicador y se transforma para armar la url de consulta
    Se llama al método -cambio- y se le pasan los argumentos de la url y la fecha y el indicador
=end

def url(indicador)
    base_url = 'http://mindicador.cl/api/' #se utilizar la url de consulta api de mindicador.cl
    url = base_url + indicador #se concatena con el indicador según la opción que elija el usuario
    response =RestClient.get url #se llama al método RestClient para obtener la respuesta de la url
    result = JSON.parse(response) #se convierte la respuesta en un hash
    serie = result["serie"] #se elije la clave que contiene los valores que se quieren ocupar
    fecha =serie[0]['fecha'] #se obtiene la fecha de la serie
    fecha1 = fecha[0..9] #se rescatan los caracteres necesrios de la fecha
    año = fecha1[0..3] #se rescatan los caracteres necesrios del año
    mes= fecha1[5..6] #se rescatan los caracteres necesrios del mes
    dia = fecha1[8..9] #se rescatan los caracteres necesrios del dia
    fecha2 = dia + "-" + mes + "-" + año #se arma la fecha para la consulta
    cambio(url, fecha2, indicador) #se llama al método -cambio- con los argumentos necesarios
    
end
#-------------------------------Fin método url--------------------------------------

#-------------------------------Metodo cambio---------------------------------------
=begin
    En este método se consultan los valores de los indicadores.
    Se llama a las librerías RestClient y JSON par acceder a los valores desde la Api de mindicador.cl.
    Se arman las url de consulta -url1- con la fecha más reciente para la que haya datos
    Si el indicador es -bitcoin- se realiza la transformación de dólares a pesos antes de entregar el valor
=end
def cambio(url, fecha, indicador)
    url1 = url +"/" + fecha #se arma la url de consulta
    response =RestClient.get url1 #se llama al método RestClient para obtener la respuesta de la url
    result = JSON.parse(response) #se transfora la respuesta de la url en un hash
    serie = result['serie'] #se elije la clave que contiene los valores que se quieren ocupar
    valor =serie[0]['valor']#se rescata el valor del indicador
    if indicador == "bitcoin" #si el indicador es bitcoin se realiza la transformación de dólares a pesos
        valor = valor * url("dolar")[0]
    end
    return valor.to_f, fecha #se retorna el valor del indicador y la fecha

end
#--................................Fin método cambio--------------------------------

#----------------------------------------Menú----------------------------------------
begin
    print "|-----------------------------------------------------|\n"
    print "     Bienvenido al Identificador de precios 3b's       \n"
    print "|-----------------------------------------------------|\n"
    print "Presione una tecla para continuar...\r"
    
    print "-----------------Conversión de Dividas-----------------\n\n"

    print "Selecciones una opción\n"
    print "Agregue la opción de intercambio de precio a consultar:\n"
    print "1.- Intercambio dolar (USD) a pesos (CLP)\n"
    print "2.- Intercambio euro (EUR) a pesos (CLP)\n"
    print "3.- Intercambio bitcoin (BTC) a pesos (CLP)\n"
    print "0.- Para salir del programa:\n"
    print "Qué acción quieres realizar: "


    opcion = gets.chomp.to_i
    
    case opcion
    when 1 then puts "Para la fecha: #{url("dolar")[1]} el valor del dolar es #{url("dolar")[0]} pesos"
    when 2 then puts "Para la fecha: #{url("euro")[1]} el valor del euro es #{url("euro")[0]} pesos"
    when 3 then puts "Para la fecha: #{url("bitcoin")[1]} el valor del bitcoin es #{url("bitcoin")[0]} pesos"
    when 0 then 
        puts "Ha salido del programa" 
        return
    else
        puts "opción no valida" 
    end

end while (opcion!=0)