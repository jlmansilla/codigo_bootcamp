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



$empresa = "3BS"

def lineas
    content = File.read("identificador_3b/DATOS.txt") # lee el archivo
    lines = content.split("\n") # divide el contenido en líneas
    
    return lines
end



def catalogo(archivo)
    arreglo =""
    
    archivo.each do |i|
        indice="#{i[0..1]}"
        nombre="#{i[2..8]}"
        unidad="#{i[9..10]}"
        precio="#{i[11..15]}"
        con_iva = iva(precio)
        categoria="#{i[16..18]}"
        subcategoria="#{'%6s' % i[19..24]}"
        clave = indice + categoria[0..2] + "3BS"
            
        

        arreglo += "#{clave}#{nombre}#{unidad}#{categoria}#{subcategoria}#{'%08.2f' % con_iva}\n"
        
               
        
        
        
        
    end
    
    return arreglo
end



def iva(valor)
    precioFinal=(valor.to_f  + valor.to_f * 0.19)
    return precioFinal
    
end

def imprime
    
    arr = catalogo(lineas).split("\n")
   
    arr.each do |i|
        clave="#{i[0..7]}"
        nombre="#{i[8..14]}"
        unidad="#{i[15..16]}"
        categoria="#{i[17..19]}"
        subcategoria="#{i[20..25]}"
        con_iva="#{i[26..33]}"
        
            
        puts " Los datos del producto son:\nClave: #{clave} Nombre: #{nombre} Unidad: #{unidad} Categoria: #{categoria} Subcategoria: #{subcategoria} \nPrecio Final: #{con_iva}\n\n"

       
               
        
        
       
        
    end
       
     return arr
    
    
end



puts "\n ++++++++++++++ Sumas de precios finales +++++++++++++++++"
puts "Ingrese la cantidad de priductos a totalizar: "
cantidad = gets.chomp.to_i


def total(numero)
    
    arr= imprime.slice(0,numero)
    totalizar = []
    
    for i in (0..numero-1) do
        
        totalizar << (arr[i][-7..-1].to_f)
        
    end
    

    puts "\n El precio Total de esos #{numero} productos es  #{totalizar.reduce:+}"
end
total(cantidad)






