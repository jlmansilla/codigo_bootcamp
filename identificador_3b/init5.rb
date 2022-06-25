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
    lines = File.readlines("catalogo_productos.txt") # lee las líneas del archivo
        
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