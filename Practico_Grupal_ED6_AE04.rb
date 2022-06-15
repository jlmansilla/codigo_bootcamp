def productos()
    print "----------------- Producto -----------------\n\n"
    print "* Clave          :" 
    clave = gets.chomp.to_i
    print "* Nombre         :" 
    nombre= gets.chomp
    print "* Unidad         :" 
    unidad= gets.chomp.to_i
    print "* Precio         :" 
    precio= gets.chomp.to_i
    print "* Categoria      :" 
    categoria= gets.chomp
    print "* SubCategoria   :" 
    subcategoria= gets.chomp
    
   #Array = (clave,nombre,unidad,precio,categoria,subcategoria)
   for item in Array
        puts item
    end
end

def precios()
 print "Hola Mundo"
end

def impuestos()

end    


print "|-----------------------------------------------------|\n"
print "     Bienvenido al Identificador de precios 3b's       \n"
print "|-----------------------------------------------------|\n"
print "-----------------Catalogos de Producto-----------------\n\n"

print "Selecciones una opción\n"
print "1.- Generar un arreglo de un Producto:\n"
print "2.- Generar un arreglo de Precios:\n"
print "3.- Generar un arreglo de Precios con Impuestos:\n"
print "4.- Ordenar un arreglo:\n"
print "5.- Buscar un Producto en un arreglo:\n"
print "6.- Imprirmir un arreglo Ordenado:\n"
print "7.- Leer archivo de txt:\n"
print "8.- Agregar registro a Archivo txt:\n"
print "Qué acción quieres realizar:"
opcion = gets.chomp.to_i
puts
case opcion
when 1 then productos()
when 2 then #precios()
when 3 then #impuestos()
when 4 then #ordenar()
when 5 then #buscar()
when 6 then #imprimir()
when 7 then #leer()
when 8 then #agregar()
end

#print "Que acción quieres realizar:"
#print "Que acción quieres realizar:"
#Generador(clave)

