require "./clases.rb" # Importamos las clases
begin # Loop del menú
    
puts "-------------------Bienvenido a Sintonizador AM/FM-----------------------"
puts "Ingrese la opción que desea:"
puts "1. Cambiar frecuencia"
puts "2. Cambiar volumen"
puts "3. Estatus de la radio"
puts "0. Salir"

opcion = gets.chomp.to_i# Capturamos la opción de menú

case opcion # Según opción elegida realiza las tareas
when 1 # Cambiar frecuencia
    puts "Ingrese la frecuencia que desea: AM o FM"
    puts "1. AM"
    puts "2. FM"
    freq = gets.chomp.to_i
    if freq == 1
        frecuencia = "AM"
    else
        frecuencia = "FM"
    end

when  2 then # Cambiar volumen
    puts "Ingrese el nivel de volumen desea: (1 a 30 db)"
    volumen = gets.chomp.to_i
    if volumen > 30 
        volumen = 1
        puts "volumen  no valido"
    end

when 3 then # mostrar estatus
    miradio = Radio.new(volumen, frecuencia)# Instanciamos la clase Radio
    puts miradio.estatus
else
   if opcion != 0 then
     puts "opcion no valida"
     
   end
end

end while opcion != 0

    


