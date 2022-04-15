# Konwersja kolorowego obrazu do odcieni szaro?ci. 
# Zaimplementuj dwie wersje: w pierwszej u?yj wzoru (r + g + b) / 3, 
# w drugiej 0.299 * r + 0.587 * g + 0.114 * b. 
# Porównaj otrzymane wyniki. 
# Czy widzisz mi?dzy nimi ró?nice? 
# Który z nich wydaje si? mie? jasno?? bli?sz? kolorowemu orygina?owi?

# Je?li widzisz bardzo wyra?ne ró?nice, zw?aszcza w jasnych fragmentach obrazu, 
# to znaczy ?e konwersja zosta?a ?le zaimplementowana. 
# Cofnij si? do poprzedniego punktu i przemy?l, co z niego wynika.

cat_image = imread('test_img/cat.jpg');

red = cat_image(:,:,1);
green = cat_image(:,:,2);
blue = cat_image(:,:,3);

imwrite(cat(1, (red + green + blue) / 3), 'zad7.png');
imwrite(cat(1, (red * 0.299 + green * 0.587 + blue * 0.114)), 'zad7_2.png');