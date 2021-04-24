f = imread('white2.jpg');
f = im2double(f);
imhist(f)
figure
histeq(f);
bright = f+0.35;
imshow(bright)
figure
contrast = f*1.5;
imshow(contrast)
figure
negative = 1-f;
imshow(negative)
figure
gray = rgb2gray(f);
imshow(gray)
figure
gamma = f.^2.1;
imshow(gamma)
figure
