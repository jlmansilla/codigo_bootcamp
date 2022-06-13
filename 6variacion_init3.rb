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
    content = File.read("identificador_3b/DATOS.txt") # lee el archivo
    lines = content.split("\n") # divide el contenido en líneas
    
    return lines
end
##-----------------------------------------Fin método lineas-------------------------------------------

=begin
    Método catalogo
    Este método recibe el valor de retorno del método -lineas- en este caso un arreglo de 10 líneas
    o 10 elementos, procesa  cada línea para cumplir con el enunciado del problema, además llama al
    método -iva- para agragar el campo -con_iva-, por último guarda un String nuevo con 
    el texto de los valores solicitados por el problema. Su valor de retorno es un String llamado
    -arreglo-.
=end
##-------------------------------------Método catalogo-----------------------------------------------
def catalogo(archivo)
    arreglo ="" #inicializa un String
    
    archivo.each do |i| #por cada elemento (linea)en el archivo .txt captura los caracteres requeridos
        indice="#{i[0..1]}"
        nombre="#{i[2..8]}"
        unidad="#{i[9..10]}"
        precio="#{i[11..15]}"
        con_iva = iva(precio)#llama al método -iva- para agregar 19% al precio
        categoria="#{i[16..18]}"
        subcategoria="#{'%6s' % i[19..24]}" #rellena los espacios en blanco si los hubiera
        clave = indice + categoria[0..2] + "3BS" # genera la nueva clave del producto 
        
        arreglo += "#{clave}#{nombre}#{unidad}#{categoria}#{subcategoria}#{'%08.2f' % con_iva}\n"
        #en cada iteración agrega al String una  nueva línea- con la información de cada producto
    end
    
    return arreglo #retorna un String con todos los productos en el nuevo formato
end
##-------------------------------------Fin método catalogo-----------------------------------------------

=begin
    Método iva
    Recibe el precio desde el método -catalogo- y devuelve el precio con iva como número
    de punto flotante
=end
##-------------------------------------Método iva---------------------------------------------------------
def iva(valor)
    precioFinal=(valor.to_f  + valor.to_f * 0.19)
    return precioFinal
    
end
##-------------------------------------Fin método iva-----------------------------------------------

=begin
    Método imprime
    Se encarga de imprimir la cantidad de  productos requerida por el usuario, recibe un parametro -arreglo- que es un arreglo con los productos requeridos, finalmente  imprime la lista de estos productos
=end
##-------------------------------------Método imprime-----------------------------------------------

def imprime(arreglo)
       
    arreglo.each do |i| #por cada elemento del arreglo imprime los 6 atributos del producto
        clave="#{i[0..7]}"
        nombre="#{i[8..14]}"
        unidad="#{i[15..16]}"
        categoria="#{i[17..19]}"
        subcategoria="#{i[20..25]}"
        con_iva="#{i[26..33]}"
                    
        puts " Los datos del producto son:\nClave: #{clave} Nombre: #{nombre} Unidad: #{unidad} Categoria: #{categoria} Subcategoria: #{subcategoria} \nPrecio Final: #{con_iva}\n\n"
           
    end
       
end
##-------------------------------------Fin método imprime--------------------------------------------------------
=begin
    Sub -encabezado
    Esta sección genera un nuevo encabezado para la segunda parte del programa
    en donde se solicita que se ingrese una cantidad de productos para totalizar
    
=end

#-----------------------------------------Sub-encabezado---------------------------------------------------
puts "\n ++++++++++++++ Sumas de precios finales +++++++++++++++++"
puts "Ingrese la cantidad de priductos a totalizar: "
cantidad = gets.chomp.to_i
#-----------------------------------------Fin Sub-encabezado---------------------------------------------------

=begin
    Método total
    Esta sección suma los valores con iva de n cantidad de productos, según lo indicado por el usuario.
    luego llama al método -imprime- al que le pasa un arreglo con la cantidad de productos a imprimir por último imprime la suma de los calores según la cantidad de productos requeridos por el usuario.
    
=end

#-----------------------------------------Método total---------------------------------------------------
def total(numero)
    arreg = catalogo(lineas).split("\n")#llamada al método -catalogo- para generar un nuevo areglo (arreg)
    arr= arreg.slice(0,numero)#selecciona la cantidad de elementos del arreglo (productos)
    
    totalizar = []#inicializa un arreglo (-totalizar)
    
    for i in (0..numero-1) do #por cada iteración agrega el valor con iva del producto al arreglo -totalizar-
        
        totalizar << (arr[i][-7..-1].to_f)#de cada producto recoge los 7 últimos caracteres (precio con iva)
        
    end
    
    imprime(arr)#llamada al método -imprime- se le pasa el arreglo -arr-, donde cada elemento es un producto
    resultado= "\n El precio Total de esos #{numero} productos es  #{totalizar.reduce:+}"
    #(totalizar.reduce:+)suma todos los elementos (precios)almacenados en el arreglo -totalizar-    
    return resultado
end
puts total(cantidad)#llamada al método -total- el parámetro cantidad es el número que ingreso el susuario






