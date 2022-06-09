puts "Ingrese la edad de su hijo/a o sobrino/a: "
edad = gets.chomp.to_i
unless edad > 18
   if edad <= 3
       
    
    respuesta = "No debe Tener contacto alguno con
    tecnología"
   

   elsif edad <=6
    respuesta = "Debe ser restringido a una hora por dia"
    

    else 
        respuesta = "Debe ser restringido a dos horas por dia"
    end
else
    respuesta = "Es un adulto no requiere restricciones"
end
puts "Hola te Recomendados esto para tu hijo: #{respuesta}"
