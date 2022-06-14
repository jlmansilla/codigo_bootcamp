alumnos=["Roberto", "Maritza", "Axel"]

indice = alumnos.index(alumnos.last)
for i in alumnos  do 
    puts alumnos[indice]
    indice -= 1
end

print alumnos.map {|nombre| nombre.upcase }
puts alumnos