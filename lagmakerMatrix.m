function x = lagmakerMatrix(y, p)

[T,N] = size(y);

x = zeros(T-p, N*p);
counter = 0
for i = 1:p
    for j = 1:N
        counter = counter + 1;
        x(:,counter) = y(p+1-i:T-i, j);
    end
end

end