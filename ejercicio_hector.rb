a="RRGGBBYYKK"
b="|/|/|=|/|"
c="++*~~*++*"

(0..19).each do |i|
   paso = a[0]
   a = a[1...]
   a<< paso
   paso = b[0]
   b = b[1...]
   b<< paso
   paso = c[0]
   c = c[1...]
   c<< paso
 
 
 puts "#{a}  #{b}     #{c} #{i}"
 
end
