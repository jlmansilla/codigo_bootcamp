require 'rest-client'
require 'json'


def ultima_fecha_dolar
    url ='https://mindicador.cl/api/dolar/'
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result["serie"]
    fecha =serie[0]['fecha']
    fecha1 = fecha[0..9]
    año = fecha1[0..3]
    mes= fecha1[5..6]
    dia = fecha1[8..9]
    fecha2 = dia + "-" + mes + "-" + año
    return fecha2
end

def ultima_fecha_euro
    url ='https://mindicador.cl/api/euro/'
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result["serie"]
    fecha =serie[0]['fecha']
    fecha1 = fecha[0..9]
    año = fecha1[0..3]
    mes= fecha1[5..6]
    dia = fecha1[8..9]
    fecha2 = dia + "-" + mes + "-" + año
    return fecha2
end

def ultima_fecha_bitcoin
    url ='https://mindicador.cl/api/bitcoin/'
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result["serie"]
    fecha =serie[0]['fecha']
    fecha1 = fecha[0..9]
    año = fecha1[0..3]
    mes= fecha1[5..6]
    dia = fecha1[8..9]
    fecha2 = dia + "-" + mes + "-" + año
    return fecha2
end

def dolar(fecha)
    url = 'https://mindicador.cl/api/dolar/' + fecha 
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result['serie']
    valor =serie[0]['valor']
    return valor.to_f
end


def euro(fecha)
    url = 'https://mindicador.cl/api/euro/' + fecha 
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result['serie']
    valor =serie[0]['valor']
    #puts "El valor del euro es #{serie[0]['valor']} pesos" 
end

def bitcoin(fecha)
    url = 'https://mindicador.cl/api/bitcoin/' + fecha 
    response =RestClient.get url
    result = JSON.parse(response)
    serie = result['serie']
    valor_dolares =serie[0]['valor']
    valor_pesos = valor_dolares * dolar(ultima_fecha_dolar)
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
    print "Agregue la opción de intercambio de precio a consultar:\n"
    print "1.- Intercambio dolar (USD) a pesos (CLP)\n"
    print "2.- Intercambio euro (EUR) a pesos (CLP)\n"
    print "3.- Intercambio bitcoin (BTC) a pesos (CLP)\n"
    print "0.- Para salir del programa:\n"
    print "Qué acción quieres realizar: "



    opcion = gets.chomp.to_i
    
    
    
    case opcion
    when 1 then puts "El valor del dolar es #{dolar(ultima_fecha_dolar).to_s} pesos"
    when 2 then puts "El valor del euro es #{euro(ultima_fecha_euro).to_s} pesos"
    when 3 then puts "El valor del bitcoin es #{bitcoin(ultima_fecha_bitcoin).to_s} pesos"
    
    else
        puts "opción no valida" 
    end

end while (opcion!=0)