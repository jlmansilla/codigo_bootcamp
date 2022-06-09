romanos = {"I" =>1, "II"=>2, "III"=>3, "IV"=>4,"V"=>5,"VI"=>6,"VII"=>7,"VIII"=>8,"IX"=>9,"X"=>10}
puts "ingrese un número decimal o romano del 1 al 10: "

numero = gets.chomp
if numero.to_i != numero.to_s  && romanos.has_key?(numero.upcase)
    puts "Su número romano en decimal sería #{romanos[numero.upcase]}"
elsif numero.to_i > 0 && numero.to_i <= 11
    decimal = romanos.invert
    puts "Su número decimal en numeración romana sería #{decimal[numero.to_i]}"
else
    puts romanos.default = "no encontrado"
end

  
