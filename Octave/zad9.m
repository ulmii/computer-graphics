# Przejrzyj dost?pn? w Internecie (odno?niki s? w slajdach) 
# dokumentacj? pakietu „Image Processing Toolbox” i?/?lub 
# jego octave’owego odpowiednika, znajd? opis operacji skalowania obrazu

# https://octave.sourceforge.io/image/function/imresize.html

cat_image = imread('test_img/cat.jpg');

cat_image_resized = imresize(cat_image, [256 256]);

imwrite(cat_image_resized, 'zad9_scaled.png');