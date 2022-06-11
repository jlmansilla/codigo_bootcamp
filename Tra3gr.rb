def consulta?(num)
    content = File.read("DATOS.txt") # lee el archivo
    lines = content.split("\n") # divide el contenido en líneas
    ok=0
    # recorre las líneas y las imprime
   lines.each do |line|
       as=line[0..1].to_i
        
       if(as==num)
        pro = line[2..8].to_s
        uni = line[9..10].to_s
        pre = line[11..15].to_i
        cat = line[16..18].to_s
        sca = line[19..24].to_s
        ok = 1
        puts "Código: #{num}"
        puts "Producto: #{pro}"
        puts "Unidad: #{uni}"
        puts "Categoría: #{cat}"
        puts "Precio sin IVA: #{pre}"
        puts "Precio con IVA: #{pre+pre*0.19}"
       end
    end #fin del recorrido del archivo
  if (ok==0)
    puts "código no encontrado"
  end
end  #fin del método

print "ingrese el código de producto:"
num = gets.chomp.to_i
consulta?(num)
