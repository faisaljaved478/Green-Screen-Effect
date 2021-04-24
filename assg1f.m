img = imread('Robot.jpg');
img = imresize(img,[362 642]);
imshow(img)
background= imread('Picture.jpg');
background = imresize(background,[362 642]);
img1= background-img;
img1=rgb2gray(img1);
img1=im2double(img1);
tot=0;
[a,b]=size(img1);
bwimg=zeros(a,b);
for i=1:a
    for j=1:b
        bwimg(i,j)=0;
    end
end
for i=1:a
    for j=1:b
        tot=tot+img1(i,j);
    end
end
val=tot/(a*b);
for i=1:a
    for j=1:b
        if img1(i,j) > val
            bwimg(i,j)=1;
        else
            bwimg(i,j)=0;
        end
    end
end
figure;
imshow(bwimg);
img2 = im2double(img);
f= bwimg.*img2;
imshow(f)
neg= 1-bwimg;
imshow(neg)
orig= imread('white2.jpg');
orig = im2double(orig);
orig= imresize(orig, [362 642]);
imshow(orig) 
orig1=neg.*orig;
imshow(orig1)
figure
final= f+orig1;
imshow(final)
