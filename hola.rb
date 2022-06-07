print "dame tu nombre: "
respuesta = gets.chomp
puts "Bienvenido a Awakelab, #{respuesta}"
fruta = "apple"
if fruta == "apple"
    puts fruta.upcase
end
print "ingrese número 1: "
numero1 = gets.chomp.to_i
print "ingrese número 2: "
numero2 = gets.chomp.to_i
suma = numero1 + numero2
puts suma

calificacion = 7
if calificacion < 5
    puts "Alumno reprobado"
else
    puts "Alumno Aprobado"
end

number = 300
if number <=10
    
    puts "10 o menor que 10"
elsif number >= 20
    
    puts "Mayor a 20"
else
    
    puts "entre 10 y 20"
end

unless number.even?

    puts "Impar"
else
    puts "Par"
end

edad=65
adulto = edad > 18 ? "Adulto" : "No Adulto"
puts adulto