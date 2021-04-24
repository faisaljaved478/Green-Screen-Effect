f = imread('faisal.jpg');
f = im2double(f);
imhist(f)
histeq(f);
imshow(f)
bright = f+0.5;
imshow(bright)
contrast = 2*f;
imshow(contrast)
negative = 1-f;
imshow(negative)
gray = rgb2gray(f);
imshow(gray)
gamma = f.^2.2;
imshow(gamma)
