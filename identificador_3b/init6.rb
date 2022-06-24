require 'rest-client'
require 'json'
url = 'https://mindicador.cl/api/dolar/17-06-2022/?valor'
url1 = 'https://mindicador.cl/api/euro'
url2 = 'https://mindicador.cl/api/bitcoin'



#Leer archivo de txt | Búsqueda
def leer()
    content = File.read("catalogo_productos.txt")
    lines = content.split("\n")
    #print lines
    #puts ""
    return lines
end

response =RestClient.get url
response1 = RestClient.get url1
response2 = RestClient.get url2
$result = JSON.parse(response)
$result2 = JSON.parse(response1)
$result3 = JSON.parse(response2)

def catalogo()
    puts "Catalogo de productos"
    leer.each do |line|
        puts line
    end
    
end

def dolar()
     $result.each do |i|
        puts "El dolar es: #{i['valor']}"
    end
end

def euro()
    $result2.each do |i|
        puts i['valor']
    end    
end

def bitcoin()
    $result3.each do |i|
        puts i['valor']
    end    
end
    


#Menú
begin
    print "|-----------------------------------------------------|\n"
    print "     Bienvenido al Identificador de precios 3b's       \n"
    print "|-----------------------------------------------------|\n"
    print "Presione una tecla para continuar...\r"
    gets
    print "-----------------Conversión de Dividas-----------------\n\n"

    print "Selecciones una opción\n"
    print "Ingrese la clave del producto que desea consultar (del 0 al 13):\n"
    print "Agregue la opción de intercambio de precio a consultar:\n"
    print "1.- De pesos chilenos (CLP) a dolar (USD)\n"
    print "2.- De pesos chilenos (CLP) a euro (EUR)\n"
    print "3.- De pesos chilenos (CLP) a bitcoin (BTC)\n"
    print "0.- Para salir del programa:\n"
    print "Qué acción quieres realizar: "



    opcion = gets.chomp.to_i

    case opcion
    when 1 then dolar()
    when 2 then euro()
    when 3 then bitcoin()
    when 4 then catalogo()
    else
        return 0
    end

end while (opcion!=0)