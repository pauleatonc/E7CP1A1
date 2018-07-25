h = {"x": 1, "y":2}

h[:"z"] = 3
h[:"x"] = 5
h.delete(:"y")
puts h
if h.key?(:"z")
  puts "yeah"
end
a = h.invert
puts a
