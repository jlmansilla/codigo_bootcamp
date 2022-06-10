puts "ingresa el texto a 'rotar'"
texto = gets.chomp

# deberá realizar una "rotación" del texto 20 veces

for i in 1..20 do
    nueva_palabra = texto[1..texto.length]+texto[0]
    puts nueva_palabra
    texto = nueva_palabra
end
