# Octave traktuje wszystkie sta?e liczbowe jako 
# warto?ci zmiennoprzecinkowe podwójnej precyzji, 
# co za tym idzie po wykonaniu x = 7 zmienna x b?dzie mia?a typ double. 

# W jaki sposób mo?na wymusi? zmian? typu tej sta?ej, 
# powiedzmy na 8-bitow? liczb? ca?kowit? albo na warto?? boolowsk?? 
# Jakie s? zasady tych konwersji (kierunek zaokr?glania, 
# jakie liczby s? uznawane za prawd? a jakie za fa?sz, itp.)?

# Kazda liczba rozna od 0 jest konwertowana na true, reszta na false

x = int8(32)
printf("Class of x is %s, with value %d\n", class(x), x);
x = logical(x);
printf("Class of x is %s, with value %d\n", class(x), x);

y = 0
printf("Class of y is %s, with value %d\n", class(y), y);
y = logical(y);
printf("Class of y is %s, with value %d\n", class(y), y);

z = -48.19
printf("Class of z is %s, with value %d\n", class(z), z);
z = logical(z);
printf("Class of z is %s, with value %d\n", class(z), z);