function[beta, residuals] = VAR(y, p, c)
[T,~] = size(y);
yleft = y(p+1:T, :);
if c == 1
    x = [ones(T-p, 1), lagmakerMatrix(y, p)];
else
    x = lagmakerMatrix(y,p);
end

beta = (x'*x)\x'*yleft;
residuals = yleft - x*beta;
end