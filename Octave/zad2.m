# Znajd? w Internecie dwa obrazy o tych samych rozmiarach 
# (np. oba maj?ce 512 kolumn na 512 wierszy) i ?ci?gnij je na lokalny dysk. 
# Za?aduj je do Octave’a, a nast?pnie zrób z nich kola?: 
# lewa po?owa pierwszego obrazka sklejona z praw? po?ow? drugiego. 
# Otrzymany obraz zapisz na dysk.

CAT = imread('test_img/cat.jpg');
DOG = imread('test_img/dog.jpg');

[liczba_wierszy, liczba_kolumn, liczba_warstw] = size(CAT);

for y = 1:liczba_wierszy
  for x = 1:liczba_kolumn
    for z = 1:liczba_warstw
      if (x < liczba_kolumn/2)
        W(y,x,z) = CAT(y,x,z);
      else
        W(y,x,z) = DOG(y,x,z);
      endif
    end
  end
end

imwrite(W, 'zad2.png');