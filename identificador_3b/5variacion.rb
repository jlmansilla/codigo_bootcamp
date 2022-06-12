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
print "-" * 20
print "Catálogo de productos"
puts "-" * 20
puts "\n"
#-----------------------------------------Fin Encabezado-------------------------------------------

=begin
    Procedimientos
    Esta sección contiene los métodos que resuelven el problema planteado
    
=end

#-----------------------------------------Métodos-------------------------------------------
=begin
    Método lineas
    Este método lee un archivo .txt predeterminado 
    
=end
##-------------------------------------Método lineas-----------------------------------------------
def lineas
    content = File.read("DATOS.txt") # lee el archivo y genera un string (content)
    lines = content.split("\n") # divide (split) el contenido en líneas (el delimitador es el salto de línea)
    
    return lines #valor de retorno es un arreglo (Array)
end
##-----------------------------------------Fin método lineas-------------------------------------------

=begin
    Método catalogo
    Este método recibe el valor de retorno del método -lineas- en este caso un arreglo de 10 líneas
    o 10 elementos, procesa  cada línea para cumplir con el enunciado del problema, además llama al
    método -iva- para agragar el campo -con_iva-, por último guarda un arreglo por cada producto en
    el archivo de texto con los valores solicitados por el problema. Su valor de retorno es este
    arreglo.
=end
##-------------------------------------Método catalogo-----------------------------------------------
def catalogo(archivo)
    arreglo = [] #define un areglo vacio
    
    archivo.each do |i| #por cada elemento (linea)en el archivo .txt captura los caracteres requeridos
        indice="#{i[0..1]}"
        nombre="#{i[2..8]}"
        unidad="#{i[9..10]}"
        precio="#{i[11..15]}"
        con_iva = iva(precio) #llama al método -iva- para agregar 19% al precio
        categoria="#{i[16..18]}"
        subcategoria="#{i[19..24]}"
        clave = indice + categoria[0..2] + "3BS" # genera la nueva clave del producto           
        
        arreglo << [clave, nombre, unidad, categoria, subcategoria, '%.2f' % con_iva]     
        #en cada iteración agrega un arreglo nuevo a la variable -arreglo- con la 
        #información de cada producto
    end
    return arreglo #retorna un arreglo con todos los productos en el nuevo formato
end
##-------------------------------------Fin método catalogo-----------------------------------------------

=begin
    Método iva
    Recibe el precio desde el método -catalogo- y devuelve el precio con iva como número
    de punto flotante
=end
##-------------------------------------Método iva-----------------------------------------------

def iva(valor)
    precioFinal=(valor.to_f  + valor.to_f * 0.19)
    return precioFinal
    
end
##-------------------------------------Fin método iva-----------------------------------------------

=begin
    Método imprime
    Se encarga de imprimir los productos, hace uso del método -catalogo- e imprime la lista de
    productos
=end
##-------------------------------------Método imprime-----------------------------------------------
def imprime
    arr = catalogo(lineas)#guarda en el arreglo -arr- el valor devuelto por el método catálogo
    
    
    (0..arr.length-1).each do |i| #por cada elemento del arreglo imprime los 6 atributos del producto
        
     puts " Los datos del producto son:\nClave: #{arr[i][0]} Nombre: #{arr[i][1]} Unidad: #{arr[i][2]} Categoria: #{arr[i][3]} Subcategoria: #{arr[i][4]} \nPrecio Final: #{arr[i][5]}\n\n"
    end
    
end
##-------------------------------------Fin método imprime-----------------------------------------------

imprime #llamada al método imprime

#---------------------------------------Fin primera parte del programa----------------------------------

=begin
    Sub -encabezado
    Esta sección genera un nuevo encabezado para la segunda parte del programa
    en donde se solicita que se ingrese una cantidad de productos para totalizar
    
=end

#-----------------------------------------Sub-encabezado---------------------------------------------------


puts "\n ++++++++++++++ Sumas de precios finales +++++++++++++++++"
puts "Ingrese la cantidad de productos a totalizar: "
cantidad = gets.chomp.to_i

#-----------------------------------------Fin Sub-encabezado---------------------------------------------------

=begin
    Método total
    Esta sección suma los valores con iva de n cantidad de productos, según lo indicado por el usuario.
    luego imprime los nombres y precios de los productos y la suma total de ellos
    
=end

#-----------------------------------------Método total---------------------------------------------------

def total(numero)
       
    arr= catalogo(lineas).slice(0,numero) #guarda en la variable arr la cantidad de productos según
    #lo indicado por el usuario -catalogo(lineas)- es el arreglo, slice toma una cantidad de elementos
    #del arreglo desde 0 hasta la cantidad indicada por el usuario
    totalizar = []#crea un arreglo 
    
    for i in (0..numero-1) do
    
        totalizar << (arr[i][5].to_f)
        puts "\n #{arr[i][1]}      $#{arr[i][5]}"
    end
    

    puts "\n El precio Total de esos #{numero} productos es  #{totalizar.reduce:+}"
end
#-----------------------------------------Método total---------------------------------------------------
total(cantidad) # llamada a método total

#-----------------------------------------Fin métodos---------------------------------------------------



