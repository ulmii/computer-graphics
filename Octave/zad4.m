# Dana jest macierz liczb zmiennoprzecinkowych. 
# W jaki sposób sprawdzi?, czy warto?ci w niej si? znajduj?ce 
# nie wykraczaj? poza przedzia? [0, 1]? 
# A jak przyci?? nielegalne warto?ci do dozwolonego zakresu?

a = [ 0.545 0.34811, 1.349 -5
      35 0.3199 0.885  0 ];

# Srawdzenie
a
a(a > 1.0)
a(a < 0.0)

# Przyciecie
a(a > 1.0) = 1.0;
a(a < 0.0) = 0.0

# Sprawdzenie
a
a(a > 1.0)
a(a < 0.0)