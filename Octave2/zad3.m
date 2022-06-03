% Przy pomocy gradientu Sobela znajd? kraw?dzie na jakim? obrazku. 
% Obrysuj je na czerwono (to znaczy: we? oryginalny obraz, wszystkim 
% pikselom gdzie zosta?a wykryta kraw?d? zmie? kolor na #FF0000), 
% zapisz wynik w pliku PNG. W tym zadaniu mo?na albo u?y? odpowiedniej 
% bibliotecznej funkcji (?atwiejsze), albo samodzielnie z?o?y? gradient 
% Sobela z dwóch masek Sobela wed?ug wzoru podanego na wyk?adzie (trudniejsze).

pkg load image;

IMG_GRAY = imread('test_img/cameraman.png');
I = double(IMG_GRAY) / 255;
W = imfilter(I, fspecial('sobel'), 'replicate');
W = min(abs(W), 1);

imwrite(W, 'zad3_1.png');

red = W;
green = W;
blue = W;

red(red > 0.1) = 1.0;
green(:) = 0.0;
blue(:) = 0.0;

imwrite(cat(3, red, green, blue), 'zad3_2.png');