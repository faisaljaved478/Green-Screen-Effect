x = imread('Robot.jpg');
x = imresize(x,[362 642]);
imshow(x)
figure
y = imread('picture.jpg');
y = imresize(y,[362 642]);
imshow(y)
figure
x = im2double(x);
y = im2double(y);
z = x-y;
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
f = imread('white2.jpg');
f = imresize(f,[362 642]);
f = im2double(f);
int1 = negative.*f;
imshow(int1)
final = int+int1;
imshow(final)


%subplot(221),imshow(binary2), title('binary2')
%subplot(222),imshow(negative), title('negative')
