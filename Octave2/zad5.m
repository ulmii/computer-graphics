% Znajd? w dokumentacji funkcje pozwalaj?ce zbinaryzowa? obraz oraz przekszta?ca? 
% go przy pomocy operacji morfologicznych. ?ci?gnij z Internetu obrazek z jakimi? 
% przedmiotami rozrzuconymi na jednolitym pod?o?u (np. monety na blacie sto?u), 
% spróbuj go przetworzy? tak, jak to musia?by zrobi? robot chc?cy ustali? gdzie 
% na zdj?ciu te monety s?. Prosz? zwróci? uwag? na to, ?e kontrast pomi?dzy 
% przedmiotem a pod?o?em nie zawsze musi by? oparty o ich jasno??. Mo?na sobie 
% wyobrazi? np. z?ote monety na czerwonym pod?o?u, albo nawet ludzi w 
% ró?nokolorowych (ale nie zielonych) ubraniach na tle zielonej ?ciany. 
% Zastanów si?, jak w takiej sytuacji nale?a?oby robi? binaryzacj?.

pkg load image;

IMG = imread('test_img/objects.jpg');

BW = im2bw(IMG);

imwrite(BW, 'zad5_1.png')

BW2 = bwmorph(BW,'remove');
imwrite(BW2, 'zad5_2.png')

IMG = imread('test_img/people.jpg');

BW = im2bw(IMG);

imwrite(BW, 'zad5_3.png')

BW2 = bwmorph(BW,'remove');
imwrite(BW2, 'zad5_4.png')

BW3 = bwmorph(BW, 'close');
imwrite(BW3, 'zad5_5.png')