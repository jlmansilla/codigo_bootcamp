a="RRGGBBYYKK"
b="|/|/|=|/|"
c="++*~~*++*"

(0..19).each do |i| 
   a= a[1...]+a[0] 
   b = b[1...]+b[0] 
   c = c[1...]+c[0] 
 
 puts "#{a}    #{b}     #{c}    #{i+1}"
 
end
