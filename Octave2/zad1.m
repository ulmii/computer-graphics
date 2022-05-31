% Znajd? w dokumentacji opis funkcji conv2 oraz imfilter. Obie mo?na 
% wykorzysta? do filtrowania splotowego. Mask? mo?na samodzielnie wyspecyfikowa?, 
% lub u?y? jednej z tych zwracanych przez funkcj? fspecial. Poeksperymentuj 
% troch?. Pami?taj, aby w razie potrzeby przyci?? warto?ci w wynikowej macierzy 
% do dopuszczalnego zakresu (u?yj np. I = min(max(I, 0), 1);).

pkg load image;

IMG_RGB = imread('test_img/cat.jpg');

F = [ 1 1 1 ; 1 1 1 ; 1 1 1 ];
W = convn(IMG_RGB, F, 'same');
W = uint8(W);
imwrite(W, 'zad1_1.png');

F = [ 0.5 0.5 0.5 ; 0.5 0.5 0.5 ; 0.5 0.5 0.5 ];
W = convn(IMG_RGB, F, 'same');
W = uint8(W);
imwrite(W, 'zad1_2.png');

avg = fspecial('average', 7)
W = convn(IMG_RGB, avg, 'same');
W = uint8(W);
imwrite(W, 'zad1_3.png');

I = double(IMG_RGB) / 255;
W = convn(I, fspecial('unsharp'), 'same');
W = min(max(W, 0), 1);
imwrite(W, 'zad1_4.png');

F = [ 1 1 1 ; 1 1 1 ; 1 1 1 ];
W = imfilter(IMG_RGB, F, 'replicate');
W = uint8(W);
imwrite(W, 'zad1_5.png');

W = imfilter(IMG_RGB, fspecial('sobel'), 'replicate');
W = uint8(W);
imwrite(W, 'zad1_6.png');