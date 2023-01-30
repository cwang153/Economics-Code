function [aic, bic] = aicbic(y, pmax, c)
[T, N] = size(y);



for p = 1:pmax
    [~,res] = VAR(y, p, c);
    left = det(res'*res)/(T - p - 1 - N*p);
    right = (p*N^2 + N)/T;
    aic(p) = log(left) + 2 * right;
    bic(p) = log(left) + log(T) * right;
    
end 

[~, aic] = min(aic);
[~, bic] = min(bic);

end
