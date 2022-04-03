# Octave traktuje wszystkie sta?e liczbowe jako 
# warto?ci zmiennoprzecinkowe podwójnej precyzji, 
# co za tym idzie po wykonaniu x = 7 zmienna x b?dzie mia?a typ double. 

# W jaki sposób mo?na wymusi? zmian? typu tej sta?ej, 
# powiedzmy na 8-bitow? liczb? ca?kowit? albo na warto?? boolowsk?? 
# Jakie s? zasady tych konwersji (kierunek zaokr?glania, 
# jakie liczby s? uznawane za prawd? a jakie za fa?sz, itp.)?

x = int8(32)

y = 1
y = logical(y)
true(y)
false(y)

true(x)