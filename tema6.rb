require 'rest-client'
require 'json'
url = 'https://apis.digital.gob.cl/dpa/regiones/15'

response =RestClient.get url
result = JSON.parse(response.to_str)
nombre = result['nombre']
puts "El nombre de la región es #{nombre}"
puts result