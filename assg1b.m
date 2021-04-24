x = imread('Robot.jpg');
y = imread('picture.jpg');
y = imresize(y,[362 642]);
x = im2double(x);
y = im2double(y);
z = x-y;
z = rgb2gray(z);
[r,c] = size(z);
binary2 = zeros(r,c);
mean_value = mean(z(:));
for i=1:r
    for j=1:c
        if z(i,j)>mean_value
            binary2(i,j)=1;
        end
    end
end
imshow(binary2)
negative = 1-binary2;
int = binary2.*x;
imshow(int)
f = imread('faisal.jpg');
f = imresize(f,[362 642]);
f = im2double(f);
int1 = negative.*f;
imshow(int1)
final = int+int1;
imshow(final)

%subplot(221),imshow(binary2), title('binary2')
%subplot(222),imshow(negative), title('negative')
