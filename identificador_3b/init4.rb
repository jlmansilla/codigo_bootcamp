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
#----
=begin-------------------------------------Menú-------------------------------------------
puts "Qué acción desea realizar:\n
1. Generar un arreglo de un producto
2. Generar un arreglo de precios
3. Generar un arreglo de precios con impuestos
4. Ordenar un arreglo
5. Buscar un producto en un arreglo
6. Imprimir un arreglo ordenado.\n
 7.Leer archivos txt\n
 8.Agregar un registro de txt\n
 9.Imprimir un arreglo ordenado.\nrimir una arreglo ordenado
7. Leer archivos de txt
8. Agregar un registro de txt
9. Imprimir un arreglo ordenado"producto en un arreglo\n
 6.Imp"
elecci

pcasu
ts ""e eleccion
   



    pu
ts ""when 1
    #



    pu
ts ""when 2
    puts ""
when 3
    puts "puts ""
"
endwhen 4
    puts ""
when 5
    puts ""
else 

    puts ""do    Ingresa udon valo r váli
when 6
when 7
when 8
when 
    "Error: esta opción no es válida"9  
.chmp.tto_i
=end

ts #---Qué acció
end
n quieres realizar: -
ge--------------------------------Fin Menúo--------------------------------------#menú
pts
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

##-------------------------------------Método iva-----------------------------------------------

def iva(valor)
    precioFinal=(valor.to_f  + valor.to_f * 0.19)
    return precioFinal
    
end
##-------------------------------------Fin método iva-----------------------------------------------
#-----------------------------------------Método total---------------------------------------------------

def precios_con_iva (arreglo)
       
    arr= catalogo(lineas).slice(0,numero) #guarda en la variable arr la cantidad de productos según
    #lo indicado por el usuario -catalogo(lineas)- es el arreglo, slice toma una cantidad de elementos
    #del arreglo desde 0 hasta la cantidad indicada por el usuario
    totalizar = []#crea un arreglo para almacenar los valores con iva
    
    for i in (0..numero-1) do #ciclo que imprime los nombres de los productos y sus precios
    
        totalizar << (arr[i][5].to_f) #agrega un precio con iva al arreglo
        puts "\n #{arr[i][1]}      $#{arr[i][5]}" #imprime el nombre y precio del producto
    end
    

    puts "\n El precio Total de esos #{numero} productos es  #{totalizar.reduce:+}" 
    #suma todos los elementos (precios)almacenados en el arreglo -totalizar-
end
#-----------------------------------------Método total---------------------------------------------------
total(cantidad) # llamada a método total
#-----------------------------------------Método total---------------------------------------------------

def precios (arreglo)
       
    arr= catalogo(lineas).slice(0,numero) #guarda en la variable arr la cantidad de productos según
    #lo indicado por el usuario -catalogo(lineas)- es el arreglo, slice toma una cantidad de elementos
    #del arreglo desde 0 hasta la cantidad indicada por el usuario
    totalizar = []#crea un arreglo para almacenar los valores con iva
    
    for i in (0..numero-1) do #ciclo que imprime los nombres de los productos y sus precios
    
        totalizar << (arr[i][5].to_f) #agrega un precio con iva al arreglo
        puts "\n #{arr[i][1]}      $#{arr[i][5]}" #imprime el nombre y precio del producto
    end
    

    puts "\n El precio Total de esos #{numero} productos es  #{totalizar.reduce:+}" 
    #suma todos los elementos (precios)almacenados en el arreglo -totalizar-
end
#-----------------------------------------Método total---------------------------------------------------
#-------------------Método Consulta de producto---------------------------
def consulta?(num)
    content = File.read("DATOS.txt") # lee el archivo
    lines = content.split("\n") # divide el contenido en líneas
    ok=0
    # recorre las líneas y las imprime
   lines.each do |line|
       as=line[0..1].to_i
        
       if(as==num)
        pro = line[2..8].to_s
        uni = line[9..10].to_s
        pre = line[11..15].to_i
        cat = line[16..18].to_s
        sca = line[19..24].to_s
        ok = 1
        puts "Código: #{num}"
        puts "Producto: #{pro}"
        puts "Unidad: #{uni}"
        puts "Categoría: #{cat}"
        puts "Precio sin IVA: #{pre}"
        puts "Precio con IVA: #{pre+pre*0.19}"
       end
    end #fin del recorrido del archivo
  if (ok==0)
    puts "código no encontrado"
  end
end  #fin del método

print "ingrese el código de producto:"
num = gets.chomp.to_i
consulta?(num)
#-------------------Fin método consulta de producto---------------------------
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


#-----------------------------------------Fin métodos---------------------------------------------------
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