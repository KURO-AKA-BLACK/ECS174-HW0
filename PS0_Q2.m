img = imread('sample.jpg');
subplot(3,2,1),imshow(to_gray(img))
title('1.grayscale')
subplot(3,2,2),imshow(negative_image(img))
title('2.negative image')
subplot(3,2,3),imshow(mirror_image(img))
title('3.mirror image')
subplot(3,2,4),imshow(swap_read_and_blue(img));
title('4.swap red and blue channel')
subplot(3,2,5),imshow(average(img));
title('5.after average image')
subplot(3,2,6),imshow(add_sub_255(img));
title('6.random value adding to grayscale')
function ret = to_gray(img)
    ret = rgb2gray(img);
end
function ret = negative_image(img)
    ret = 255 - img;
end
function ret = mirror_image(img)
    ret = flip(img,2);
end
function ret = swap_read_and_blue(img)
    temp_img = img;
    temp_img(:,:,3)= img(:,:,1);
    temp_img(:,:,1)= img(:,:,3);
    ret = temp_img;
end
function ret = average(img)
    ret = ((double(img)+double(flip(img,2)))./2);
end
function ret = add_sub_255(img)
    gray_img = rgb2gray(img);
    r = -255 + 510.*rand(size(gray_img));
    ret = double(gray_img) + r;
    ret = max(ret,0);
    ret = min(ret,255);
end