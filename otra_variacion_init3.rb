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

$totalizar =[]
$empresa = "3BS"

def lineas
    content = File.read("DATOS.txt") # lee el archivo
    lines = content.split("\n") # divide el contenido en líneas
    
    return lines
end



def catalogo(archivo)
    
    archivo.each do |i|
        indice="#{i[0..1]}"
        nombre="#{i[2..8]}"
        unidad="#{i[9..10]}"
        precio="#{i[11..15]}"
        con_iva = iva(precio)
        categoria="#{i[16..18]}"
        subcategoria="#{i[19..24]}"
        clave = indice + categoria[0..2] + $empresa
            
        arreglo= []
        arreglo.push(clave, nombre, unidad, categoria, subcategoria, '%.2f' % con_iva)
        print "\nLos datos del producto son: \n 
        Clave: #{clave} Nombre: #{nombre} Unidad:  #{unidad}  Categoria: #{categoria} Subcategoría: #{subcategoria} 
        \n precioFinal: #{'%.2f' % con_iva}"
        
        $totalizar << (arreglo[5].to_f)
          
        
    end
    
end



def iva(valor)
    precioFinal=(valor.to_f  + valor.to_f * 0.19)
    return precioFinal
    
end
 


catalogo(lineas)

puts "\n ++++++++++++++ Sumas de precios finales +++++++++++++++++"
puts "Ingrese la cantidad de priductos a totalizar: "
cantidad = gets.chomp.to_i


def total(numero)
       arr= $totalizar.slice(0,numero)
       puts "\n El precio Total de esos #{numero} productos es  #{arr.reduce:+}"
    
end
total(cantidad)






