def hola(nombre:"",edad:0)
   if edad > 30
    puts "hola señor #{nombre}"
   elsif edad < 30
    puts "hola joven #{nombre}"
   end
end

hola(nombre:"Juan", edad:25)