#-------------Programa 1--------------
puts "-------------Programa 1--------------"
X = [1, 3, 5, 7, 9, 13]
X.each {|elemento| puts elemento }

#-------------Programa 2--------------
print   "\n"

puts "\n-------------Programa 2--------------"
y = [*1..255].find_all {|n| n.odd?}
print y

#-------------Programa 3--------------
print   "\n"

puts "\n-------------Programa 3--------------"
x = [1,5,10,7,-2]
x= x[1...]
x << 0
print x
