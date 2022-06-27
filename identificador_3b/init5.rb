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
=begin
        Este método carga los productos en un hash para poder tener una lista de datos en los que se podrá buscar un producto espécífico
        
=end
=begin
        Método lineas
        Este método lee un archivo .txt predeterminado 
        
=end
    ##-------------------------------------Método lineas-----------------------------------------------
    def lineas
        lines = File.read("catalogo _ producto _ hash.txt") # lee las líneas del archivo
        prod = lines.split("\n") # separa las productos
        item = prod[0]    
        return item
    end
    ##-----------------------------------------Fin método lineas-------------------------------------------
def hash
    mi_hash = Hash.new { |hash, key| hash[key] = [] }# Crea un hash vacío que para cada clave va a contener un array vacío

    datos = [ [:clave, '001'], [:clave, '002'], [:clave, '003'],[:clave, '004'], [:clave, '005'],
    [:nombre_del_producto, 'Té Dharamsala'],[:nombre_del_producto, 'Sirope de regaliz'], [:nombre_del_producto, 'Especias Cajun del chef Anton'], [:nombre_del_producto, 'Mermelada de grosellas de la abuela'], [:nombre_del_producto, 'Peras secas orgánicas del tío Bob'],
    [:unidad, 'caja'], [:unidad, 'litro'], [:unidad, 'gramo'], [:unidad, 'kg'], [:unidad, 'unidad'],
    [:precio, 15700], [:precio, 28600], [:precio, 75000], [:precio, 3000], [:precio, 2000],
    [:categoria, 'Abarrote'], [:categoria, 'Abarrote'], [:categoria, 'Abarrote'], [:categoria, 'Abarrote'], [:categoria, 'Abarrote']
    ]# Se crea un array con los datos que se van a cargar en el hash
    datos.each { |x,y| mi_hash[x] << y } # Se cargan los datos en el hash
    return mi_hash #valor de retorno
end
#---------------------------------------Fin método hash-------------------------------------------
#---------------------------------------Método producto--------------------------------------------
=begin
        Método producto
        Este método busca un producto en el hash según la clave del producto.
        Recibe el parametro	"prod" que es la clave del producto que se busca
        Si el producto no existe, se imprime un mensaje de error.
=end
def producto(prod)
    indice = hash()[:clave].index(prod)# Se busca el indice del producto en el hash
    if indice != nil #Si el producto existe
        hash().each do |key, array| #Se recorre el hash
                
                
            puts "#{key}:  #{array[indice]}"#imprime consecutivamente la clave y el correspondiente valor siempre que el producto sea coincidente con el código producto ingresado por el usuario
                    
        end
    else
        puts "El producto no existe" #Si el producto no existe, se imprime un mensaje de error
    end
end

def leer(lin)
        
    
    
    claves = [:clave, :nombre, :unidad, :precios, :categoria]# Se crea un array con las claves que se van a buscar en el hash
          
        items = lin.split(",")
        clave = items[0] + items[4][0..2].upcase + "3BS" # genera la nueva clave del producto
        items.shift #elimina la clave anterior
        items.unshift clave #agrega la nueva clave al array   
        
        h =Hash[claves.zip(items)] #se fusionan las claves con los valores del array
        puts h # se imprime el resultado
        
end
    


begin
    puts "Ingrese la opción que desea:"
    puts "1. Consultar productos por clave"
    puts "2. Crear Hash desde archivo de texto"
    puts "0. Salir"

    opcion = gets.chomp.to_i# Capturamos la opción de menú
 
    case opcion # Según opción elegida realiza las tareas
    
    when 1 # Consultar productos segú clave
        puts "Ingrese la calve de producto"
    
          prod = gets.chomp.to_str
    
          
            producto(prod) #Se invoca el método producto y se le pasa el parametro "prod" con el código de producto ingresado por el usuario
        
    when  2 then leer(lineas)  # Crear Hash desde archivo de texto
     
    
    else
        if opcion != 0 then
            puts "opcion no valida"
        
        end
    end
    



    
end while opcion != 0
    


    
