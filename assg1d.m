x = imread('white2.jpg');
x = imresize(x,[362 642]);
imshow(x)
figure
y = imread('white.jpg');
y = imresize(y,[362 642]);
imshow(y)
figure
x = im2double(x);
y = im2double(y);
z = y-x;
imshow(z)
figure
z = rgb2gray(z);
binary2 = imbinarize(z);
imshow(binary2)
figure
negative = 1-binary2;
imshow(negative)
figure
int = binary2.*x;
imshow(int)
figure
f = imread('Robot.jpg');
f = im2double(f);
int1 = negative.*f;
imshow(int1)
figure
final = int+int1;
imshow(final)


%subplot(221),imshow(binary2), title('binary2')
%subplot(222),imshow(negative), title('negative')
