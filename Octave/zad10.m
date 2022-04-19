# Opracuj sekwencj? polece?, która przeskaluje wskazane pliki tak, 
# aby by?y nie wi?ksze ni? 100 x 100 pikseli. 
# Nale?y zachowa? proporcje obrazów (tzn. stosunek szeroko?ci do wysoko?ci). 
# Obrazów, które by?y na tyle ma?e, 
# ?e spe?nia?y nasz warunek nie nale?y skalowa?.

image_2resize = imread('test_img/cat.jpg');
[liczba_wierszy, liczba_kolumn, liczba_wastw] = size(image_2resize);

if (liczba_wierszy <= 100 && liczba_kolumn <= 100)
  imwrite(image_2resize, 'zad10_resized.png');
else
  global scale;

  if (liczba_kolumn >= liczba_wierszy)
    scale = 100 / liczba_kolumn;
  else
    scale = 100 / liczba_wierszy;
  endif
  
  out_img = zeros (uint8(liczba_wierszy * scale), uint8(liczba_kolumn * scale), liczba_wastw, "uint8");
  
  scale_matrix = zeros(3, 3); 
  scale_matrix(1, 1) = 1 / scale; 
  scale_matrix(2, 2) = 1 / scale; 
  scale_matrix(3, 3) = 1; 
  
  for x = 1:uint8(liczba_wierszy * scale)
    for y = 1:uint8(liczba_kolumn * scale)
      for z = 1:liczba_wastw
        matrix = floor(scale_matrix * [y - 1; x - 1; 1]) + [1; 1; 0];
        x_new = matrix(2, 1);
        y_new = matrix(1, 1);
        
        out_img(x, y, z) = image_2resize(x_new, y_new, z);
      end
    end
  end

  imshow(out_img);
endif