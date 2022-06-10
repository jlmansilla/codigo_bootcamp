#Métodos
def welcome
    $variable = 5
    puts "hola Mundo"
end

#***Retorno***
def resta!(n1,n2)
    n1-n2
end 

#***retorno implícito***
def resta(n1,n2)
    restado = n1-n2

if restado < 0
    return "Resultado Negativo"
else
    return "resultado positivo"
end
end 

#***Parámetros opcionales y obligatorios.***
def numeros(a,b,c,d)
    a * b * c * d
end 

#puts $variable
#if $variable == 4
#    puts "es igual"

#else
#    $variable = 6   
#end     
puts $variable

#***Valores prederterminados***
def bienvenido(saludo, nombre='Israel', punct='..!')
    saludo + ' ' + nombre + punct + " a AWAKE LAB"
end 

#welcome
puts $variable

resultado = resta!(5,3)
puts resultado + 2

 
puts resta(3,5)
puts numeros(2,3,4,7)
puts numeros(5,6,7,5)
puts bienvenido("Bienvenido")
puts bienvenido("Hasta Luego")
#puts restado
puts $variable