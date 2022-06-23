require "./clases.rb" # Importamos las clases
miradio=Radio.new() # Creamos un objeto de la clase Radio

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
    
    miradio.CambiarFrecuencia(freq)

    

when  2 then # Cambiar volumen
    puts "------------Volumen------------(1 a 30 db)"
    puts "Ingrese la opción que desea:"
    puts "1. Subir volumen (+)"
    puts "2. Bajar volumen (-)"
    opcion = gets.chomp.to_i
    if opcion == 1
        puts "Ingrese los decibeles a subir"
        vol = gets.chomp.to_i
        miradio.SubirVolumen(vol)
        
    elsif opcion == 2
        puts "Ingrese los decibeles a bajar"
        vol = gets.chomp.to_i
        miradio.BajarVolumen(vol)
        
    else
        puts "Opción no válida"
    end

when 3 then # mostrar estatus
    
    puts miradio.estatus()
else
   if opcion != 0 then
     puts "opcion no valida"
     
   end
end

end while opcion != 0

    


