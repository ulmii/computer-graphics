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


img = imread('test_img/cameraman.png');
I = double(img);

%% Start 
Bx = [-1, 0, 1;-2,0,2;-1,0,1]; % Sobel Gx kernel
By = Bx'; % gradient Gy

Yx = convn(Bx, I); % convolve in 2d
Yy = convn(By, I);

G = sqrt(Yy.^2 + Yx.^2); % Find magnitude

Gmin = min(min(G)); 
dx = max(max(G)) - Gmin; % find range
G = floor((G-Gmin)/dx*255); % normalise from 0 to 255

imwrite(G, 'zad3_3.png');