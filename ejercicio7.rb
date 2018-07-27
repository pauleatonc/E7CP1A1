inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
opcion = 0

txt_menu = <<Menu
Selecciona una opcióna
1. Agregar Item
2. Eliminar Item
3. Actualizar Item
4. Ver total Item
5. Item con mayor Stock
6. opcion 6
7. Salir
Menu

def agregar_Item(inv)
  print "Agregar Item con Stock \n"
  print "* Separa el nombre del stock mediante una coma. \n"
  item = gets.chomp.split(',')
  inv[item.first] = item.last.to_i
  print inv
  print "\n"
end

def eliminar(inv)
  print "Eliminar Item del Stock \n"
  item = gets.chomp.split(',')
  inv.delete(item)
  print "Eliminando item: #{item}\n" if inv.include?(item)
  print "No existe el item: #{item} \n" unless inv.include?(item)
  inv.delete(item)
  print "\n"
  print inv
  print "\n"
end

def opcion_3(inv)
  print "Actualizar Item con Stock \n"
  print "* Separa el nombre del stock mediante una coma. \n"
  item = gets.chomp.split(',')
  print "Actualizando item: #{item.first}\n" if inv.include?(item.first)
  print "No existe el item: #{item.first} \n" unless inv.include?(item)
  inv[item.first] = item.last.to_i if inv.include?(item.first)
  print "\n"
  print inv
  print "\n"
end

def opcion_4(inv)
  print "Ver total de Stock \n"
  total_stock = inv.values.sum
  print "Tu stock total es: #{total_stock}"
  print "\n"
  print "\n"
end

def opcion_5(inv)
  print "Ver item de mayor Stock \n"
  mayor_stock = inv.max_by {|llave, valor| valor}
  print "Tu item con mayor stock es: #{mayor_stock.first} y su valor es: #{inv[mayor_stock]}"
  print "\n"
  print "\n"
end

def opcion_6(inv)
  print "Consultar item \n"
  print "* Separa el nombre del stock mediante una coma. \n"
  item = gets.chomp
  print "Si existe el item: #{item}\n" if inv.include?(item)
  print "No existe el item: #{item} \n" unless inv.include?(item)
  print "\n"
  print inv
  print "\n"
end


while opcion != 7
  print txt_menu
  opcion = gets.to_i
  case opcion
  when 1
    agregar_Item inventario
  when 2
    eliminar inventario
  when 3
    opcion_3 inventario
  when 4
    opcion_4 inventario
  when 5
    opcion_5 inventario
  when 6
    opcion_6 inventario
  when 7
    print "Elegiste salir \n"
  else
    print "Error de opcion \n"
  end
end
