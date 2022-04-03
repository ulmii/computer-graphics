# Opracuj sekwencj? polece?, która przeskaluje wskazane pliki tak, 
# aby by?y nie wi?ksze ni? 100 x 100 pikseli. 
# Nale?y zachowa? proporcje obrazów (tzn. stosunek szeroko?ci do wysoko?ci). 
# Obrazów, które by?y na tyle ma?e, 
# ?e spe?nia?y nasz warunek nie nale?y skalowa?.

CAT = imread('test_img/cat.jpg');

imshow(CAT);
drawnow;

c = imresize(CAT, 0.5);

imshow(c);
drawnow;
