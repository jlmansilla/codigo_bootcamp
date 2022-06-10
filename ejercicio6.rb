require 'rest-client'
require 'json'
url = 'https://apis.digital.gob.cl/dpa/regiones?limit=10'
url1 = 'https://apis.digital.gob.cl/dpa/comunas?limit=20&orderDir=desc'
url2 = 'https://apis.digital.gob.cl/dpa/regiones/10/comunas/10101'

response =RestClient.get url
response1 = RestClient.get url1
response2 = RestClient.get url2
$result = JSON.parse(response)
$result2 = JSON.parse(response1)
$result3 = JSON.parse(response2)

def nombres_regiones
    $result.each do |i|
        puts i['nombre']
    end       
end

def nombres_comunas
    $result2.each do |i|
        puts i['nombre']
    end    
end
    
def datos_comuna
     puts "Nombre: #{$result3['nombre']}"
     puts "Latitud: #{$result3['lat']}"
     puts "Longitud: #{$result3['lng']}"
end

puts "\n\n"
puts "+" * 120
print" " * 40
print "10 Regiones por orden de latitud ascendente"
puts " " * 40
puts "+" * 120
puts "\n\n"

nombres_regiones
puts "\n\n"
puts "+" * 120
print" " * 40
print "20 Comunas por orden alfabético descendente"
puts " " * 40
puts "+" * 120
puts "\n\n"
nombres_comunas
puts "\n\n"
puts "+" * 120
print" " * 40
print "Información de mi comuna"
puts " " * 40
puts "+" * 120
puts "\n\n"
datos_comuna