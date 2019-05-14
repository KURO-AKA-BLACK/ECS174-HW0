rand_num = int16(rand()*5+1);

y = [1 2 3 4 5 6];
Z = reshape(y, [2,3]);

x = min(Z(:));
[r,c] = find(Z==x);

v = [8 8 3 2 1 8 1 8];
x = int16(0);
for (i = 1:length(v))
	if v(i) == 8
		x = x + 1;
	end
end
