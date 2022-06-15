=begin
    Encabezado
    Esta sección genera un encabezado para la impresión del catálogo de productos
    
=end
#-----------------------------------------Encabezado--------------------------------------------
puts "-" * 60
print "|"
print " " * 8
print "Bienvenido al identificador de precios 3b's"
print " " * 7
print "|"
puts ""
puts "-" *60
puts
puts
print "-" * 10
print "Catálogo de productos"
puts "-" * 10
#-----------------------------------------Fin Encabezado-------------------------------------------
=begin---------while loop, para que el usuario elija nuevamente---------------
intenta_denuevo="si"
while intenta_denuevo=="si"
    Aqui va tooooodo nuestro código
    puts "Desea intentar nuevamente: "
    intenta_denuevo=gets.chomp
end



=end

=begin-------------------------------------Menú-------------------------------------------
puts "Qué acción desea realizar:\n
1. Generar un arreglo de un producto\n
2. Generar un arreglo de precios\n
3. Generar un arreglo de precios con impuestos\n
4. Ordenar un arreglo\n
5. Buscar un producto en un arreglo\n
6. Imprimir un arreglo ordenado.\n
7.Leer archivos txt\n
8.Agregar un registro de txt\n

puts "Qué acción desea realizar:"
eleccion=gets.chomp.to_i

case eleccion
when 1
    
when 2

when 3
    
when 4
    
when 5

when 6

when 7

when 8

when 9

else 
    "Error: esta opción no es válida, intenta nuevamente."  
end
=end
#---Qué acción quieres realizar: -
#--------------------------------Fin Menúo--------------------------------------#menú

##-------------------------------------Método catalogo-----------------------------------------------
=begin
def crea_arreeglo(archivo)
    
end
##-------------------------------------Fin método catalogo-----------------------------------------------

##-------------------------------------Método iva-----------------------------------------------

def iva(valor)
    precioFinal=(valor.to_f  + valor.to_f * 0.19)
    return precioFinal
    
end
##-------------------------------------Fin método iva-----------------------------------------------
#-----------------------------------------Método total---------------------------------------------------

def arreglo_precios (arreglo)
       
    
end
#-----------------------------------------Método total---------------------------------------------------

#-----------------------------------------Método total---------------------------------------------------

def precios_con_iva (arreglo)
end
#-----------------------------------------Método total---------------------------------------------------
#-------------------Método Consulta de producto---------------------------
def consulta?(num)
    
end  #fin del método

print "ingrese el código de producto:"
num = gets.chomp.to_i
consulta?(num)
#-------------------Fin método consulta de producto---------------------------
##-------------------------------------Método imprime-----------------------------------------------

def imprime(arreglo)
       
  
end
##-------------------------------------Fin método imprime--------------------------------------------------------


#-----------------------------------------Fin métodos---------------------------------------------------
=end
puts "Qué acción quieres realizar:
1. Generar un arreglo de un producto
2. Generar un arreglo de precios
3. Generar un arreglo de precios con impuestos
4. Ordenar un arreglo
5. Buscar un producto en un arreglo
6. Imprimir una arreglo ordenado
7. Leer archivos de txt
8. Agregar un registro de txt
9. Imprimir un arreglo ordenado