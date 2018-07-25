personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

h = Hash[personas.zip(edades)]
puts h

def promedio(h_pmt)
  h_pmt.values.sum / h_pmt.length
end

print promedio h
