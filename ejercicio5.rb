meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = Hash[meses.zip(ventas)]
puts h
a = h.invert
puts a

puts a.keys
puts a.keys.max
puts a[a.keys.max]
puts "#{a[a.keys.max]} : #{a.keys.max}"
