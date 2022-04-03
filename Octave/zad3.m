# Za?aduj obraz RGB do Octave’a. 
# Zmodyfikuj macierz tak, aby wszystkie piksele w kolumnach 
# od 30 do 50 sta?y si? niebieskie. 
# Zapisz wynik.

CAT = imread('test_img/cat.jpg');

[liczba_wierszy, liczba_kolumn, liczba_warstw] = size(CAT);

red = CAT(:,:,1);
green = CAT(:,:,2);
blue = CAT(:,:,3);

for y = 1:liczba_wierszy
  for x = 30:50
    red(y, x) = 0;
    green(y, x) = 0;
    blue(y, x) = 255;
  end
end

W = cat(3, red, green, blue);
clear red green blue;

imwrite(W, 'zad3.png');