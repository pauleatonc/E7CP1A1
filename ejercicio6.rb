restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

mas_caro = restaurant_menu.max_by {|llave, valor| valor}
print mas_caro
print "\n"
mas_barato = restaurant_menu.min_by {|llave, valor| valor}
print mas_barato
print "\n"
promedio = restaurant_menu.values.sum / restaurant_menu.length
print promedio
a = restaurant_menu.keys
b = restaurant_menu.values
print "\n"
print a
print "\n"
print b
