load PS0_A
plot(sort(A(:),'descend'))
figure
histogram(A(:),10)
figure
Z = A(51:100,1:50);
imagesc(Z)
figure
W = A - (sum(A(:))./10000);
imagesc(W)
figure
Y=zeros(100,100,3);
Y(A>(sum(A(:))./10000)) = 255,0,0
imshow(Y)