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

def lineas
    content = File.read("DATOS.txt") # lee el archivo
    $lines = content.split("\n") # divide el contenido en líneas

end

$empresa = "3BS"
puts $lines

lineas

def ingreso
    $lines.each do |i|
        indice="#{i[0..1]}"
        nombre="#{i[2..8]}"
        unidad="#{i[9..10]}"
        $precio="#{i[11..15]}"
        categoria="#{i[16..18]}"
        subcategoria="#{i[19..24]}"
        clave = indice + categoria[0..2] + $empresa
        
        print "\nLos datos del producto son: \n 
        Clave: #{clave} Nombre: #{nombre} Unidad:  #{unidad}  Subcategoría: #{subcategoria} 
        "
        $arreglo =[$precio.to_i]
        _suma($arreglo)
        iva
    end
    
end



def iva
    precioFinal=($precio.to_f  + $precio.to_f * 0.19)
    puts "precioFinal: #{'%.2f' % precioFinal}"
end

ingreso

puts "\n ++++++++++++++ Sumas de precios finales +++++++++++++++++"

$cantidad   = rand(1..10)

def _suma
    for i in [1..$cantidad] do
        
    end
end

puts "cantidad de productos a sumar: #{$cantidad}"
_suma
def _suma()
    for i in [1..$cantidad] do
        suma +=($precio.to_f  + $precio.to_f * 0.19)
        puts suma
    end
end



