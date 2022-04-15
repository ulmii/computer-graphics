# Opracuj sekwencj? polece?, która przeskaluje wskazane pliki tak, 
# aby by?y nie wi?ksze ni? 100 x 100 pikseli. 
# Nale?y zachowa? proporcje obrazów (tzn. stosunek szeroko?ci do wysoko?ci). 
# Obrazów, które by?y na tyle ma?e, 
# ?e spe?nia?y nasz warunek nie nale?y skalowa?.

cat_image = imread('test_img/cat.jpg');

[liczba_wierszy, liczba_kolumn, liczba_warstw] = size(cat_image);

if (liczba_wierszy <= 100 && liczba_kolumn <= 100)
  imwrite(cat_image, 'zad10_resized.png');
else
  if (liczba_wierszy > liczba_kolumn)
    
  else
    
  endif
  
  scale = (liczba_wierszy / liczba_kolumn)
  imshow(cat_image);
  drawnow;
endif