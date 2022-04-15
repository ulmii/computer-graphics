# Rozbuduj powy?szy skrypt. Dodaj sprawdzanie, 
# czy przypadkiem wej?ciowy obraz wczytany z 
# pliku ju? nie jest w odcieniach szaro?ci 
# (trzeba b?dzie u?y? instrukcji if). Je?li tak, 
# to oczywi?cie ?adnych przelicze? nie trzeba wykonywa?.

# Dla ch?tnych: zapakuj ten kod w funkcj?, 
# tak aby dosta? co? podobnego do standardowej funkcji rgb2gray.

cat_image = imread('test_img/cat.jpg');

function retval = rgb2graycustom (image)
  W = image;

  [liczba_wierszy, liczba_kolumn, liczba_warstw] = size(image);

  if (liczba_warstw > 1)
    red = image(:,:,1);
    green = image(:,:,2);
    blue = image(:,:,3);
    
    
    W = cat(1, (red * 0.299 + green * 0.587 + blue * 0.114));
  endif
  
  retval = W;
endfunction

imwrite(rgb2graycustom(cat_image), 'zad8_conversion.png');