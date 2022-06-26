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
#-----------------------------------------Método hash-----------------------------------------------
def hash
    mi_hash = Hash.new { |hash, key| hash[key] = [] }

    raw_data = [ [:clave, '001'], [:clave, '002'], [:clave, '003'],[:clave, '004'], [:clave, '005'],
    [:nombre_del_producto, 'Té Dharamsala'],[:nombre_del_producto, 'Sirope de regaliz'], [:nombre_del_producto, 'Especias Cajun del chef Anton'], [:nombre_del_producto, 'Mermelada de grosellas de la abuela'], [:nombre_del_producto, 'Peras secas orgánicas del tío Bob'],
    [:unidad, 'caja'], [:unidad, 'litro'], [:unidad, 'gramo'], [:unidad, 'kg'], [:unidad, 'unidad'],
    [:precio, 15700], [:precio, 28600], [:precio, 75000], [:precio, 3000], [:precio, 2000],
    [:categoria, 'Abarrote'], [:categoria, 'Abarrote'], [:categoria, 'Abarrote'], [:categoria, 'Abarrote'], [:categoria, 'Abarrote']
    ]
    raw_data.each { |x,y| mi_hash[x] << y } 
    return mi_hash
end

def producto(prod)
    indice = hash()[:clave].index(prod)
    if indice != nil
        hash().each do |key, array|
                
                
            puts "#{key}:  #{array[indice]}"
                    
        end
    else
        puts "El producto no existe"
    end
end
begin
    puts "Ingrese la opción que desea:"
    puts "1. Consultar productos por clave"
    puts "2. Crear Hash desde archivo de texto"
    
    opcion = gets.chomp.to_i# Capturamos la opción de menú
 
    case opcion # Según opción elegida realiza las tareas
    
    when 1 # Consultar productos segú clave
        puts "Ingrese la calve de producto"
    
    
        prod = gets.chomp.to_str
    
        
            
            producto(prod)
        
            
    

    
    
         #when  2 then # Crear Hash desde archivo de texto
    
         #   puts "------------Volumen------------(1 a 30 db)"
         #   puts "Ingrese la opción que desea:"
         #   puts "1. Subir volumen (+)"
         #   puts "2. Bajar volumen (-)"
         #   opcion = gets.chomp.to_i
         #   if opcion == 1
         #       puts "Ingrese los decibeles a subir"
         #       vol = gets.chomp.to_i
         #       miradio.SubirVolumen(vol)
         #       
         #   elsif opcion == 2
         #       puts "Ingrese los decibeles a bajar"
         #       vol = gets.chomp.to_i
         #       miradio.BajarVolumen(vol)
         #       
         #   else
         #       puts "Opción no válida"
         #   end

          #  when 3 then # mostrar estatus
            
           #     puts miradio.estatus()
            #else
            #if opcion != 0 then
            #    puts "opcion no valida"
            
           # end
    
    else
        if opcion != 0 then
            puts "opcion no valida"
        
        end
    end
    

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
        lines = File.readlines("catalogo_productos_hash.txt") # lee las líneas del archivo
            
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
=begin
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
=end

    
end while opcion != 0
    


    
