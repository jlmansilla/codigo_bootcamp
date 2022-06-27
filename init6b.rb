require 'rest-client'
require 'json'

def url(indicador)
    base_url = 'http://mindicador.cl/api/'
    url = base_url + indicador
    ultima_fecha(url) 
end

def ultima_fecha(url)
    
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result["serie"]
    fecha =serie[0]['fecha']
    fecha1 = fecha[0..9]
    año = fecha1[0..3]
    mes= fecha1[5..6]
    dia = fecha1[8..9]
    fecha2 = dia + "-" + mes + "-" + año
    cambio(url, fecha2) 
end

def cambio(url, fecha)
    url1 = url +"/" + fecha
    response =RestClient.get url1
    result = JSON.parse(response)
    serie = result['serie']
    valor =serie[0]['valor']
    return valor.to_f
end

def bitcoin(fecha)
    url = 'https://mindicador.cl/api/bitcoin/' + fecha 
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result['serie']
    valor_dolares =serie[0]['valor']
    valor_pesos = valor_dolares * dolar(ultima_fecha_dolar)
    #puts "El valor del bitcoin es #{valor_pesos} pesos"
    return valor_pesos
end
    


#Menú
begin
    print "|-----------------------------------------------------|\n"
    print "     Bienvenido al Identificador de precios 3b's       \n"
    print "|-----------------------------------------------------|\n"
    print "Presione una tecla para continuar...\r"
    
    print "-----------------Conversión de Dividas-----------------\n\n"

    print "Selecciones una opción\n"
    print "Ingrese la clave del producto que desea consultar (del 0 al 13):\n"
    print "Agregue la opción de intercambio de precio a consultar:\n"
    print "1.- Intercambio dolar (USD) a pesos (CLP)\n"
    print "2.- Intercambio euro (EUR) a pesos (CLP)\n"
    print "3.- Intercambio bitcoin (BTC) a dolares (USD)\n"
    print "0.- Para salir del programa:\n"
    print "Qué acción quieres realizar: "



    opcion = gets.chomp.to_i
    
    
    
    case opcion
    #when 1 then puts "El valor del dolar es #{dolar(ultima_fecha_dolar).to_s} pesos"
    when 1 then puts "El valor del dolar es #{url("dolar")} pesos"
    when 2 then puts "El valor del euro es #{url("euro")} pesos"
    when 3 then puts "El valor del bitcoin es #{url("bitcoin")} dolares"
    
    else
        puts "opción no valida" 
    end

end while (opcion!=0)