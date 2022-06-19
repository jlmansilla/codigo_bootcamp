require "./clases.rb"
begin
    
puts "-------------------Bienvenido a Sintonizador AM/FM-----------------------"
puts "Ingrese la opción que desea:"
puts "1. Cambiar frecuencia"
puts "2. Cambiar volumen"
puts "3. Estatus de la radio"
opcion = gets.chomp.to_i

case opcion
when 1
    puts "Ingrese la frecuencia que desea: AM o FM"
    puts "1. AM"
    puts "2. FM"
    freq = gets.chomp.to_i
    if freq == 1
        frecuencia = "AM"
    else
        frecuencia = "FM"
    end

when  2
    puts "Ingrese el nivel de volumen desea: (1 a 30 db)"
    volumen = gets.chomp.to_i

    
else
    return 0
end


end while opcion == 0
Radio.new(volumen, frecuencia)
    


