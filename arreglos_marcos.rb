#array=[1,"Hola",3.0]

#array=%w[a b c d e f ] #No hay necesidad de usar comas 

#inicializando un arreglo 
=begin
mi_arreglo=array.new
mi_arreglo(3)

=end

#print array[1..4]

#Se pueden asignar fragmentos de un array a una variable. 

=begin
arreglo=[10,5,25,4,3]
arreglo.each do|elemento|
    print elemento,"-"
end

array.each{
    |elemento| print elemento, "-"
}
#Ejercitar más el método "each"
=end

#while

=begin
a=["a","b","c","d"]

i=0
while (i<a.length)
    puts "#{a[i]}-#{i}"
    i +=1
end
=end

#Ya y la huea es que se puede trabajar con for loops y la huea
#alumnos=["Marcos","Juan","Marylin","Israel","Hector","Mauricio"]

#puts alumnos.first

#puts alumnos.take(2)

#alumnos.rotate(1)

=begin
for i in (1..6)
    puts alumnos[-i]
end
=end

#Eliminar un elemento
=begin
alumno=["Roberto","Maritza","Axel","Israel","Mauricio"]
alumno.drop 4
puts alumno
=end

alumnos=["Marcos","Juan","Marylin","Israel","Hector","Mauricio"]

#.pop elimina elementos de derecha a izquierda 

#.push inserta nuevos registros al final del array.

#Filtrado 
num=[1,2,3,4,5,6]
#puts[1,2,3,4,5,6,].select{|num|num.even?}


#Reducción suma los valores comúestos(?) Buscar más información al respecto.
arreglo=[1,2,3,4,5,6]

#puts arreglo.reduce(0) {|a,b| a+b}

=begin
Acceder a un elemento

lista=["a","b","c","d","r"]

lista[1]

"b"

push sirve para insertar valores a nuestro elemento




pop permite eliminar

=end

#Buscar en el reading acerca de la manipulación de archivos 
