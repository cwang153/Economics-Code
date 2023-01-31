
%%%%%%%%%% 1.  load data  %%%%%%%%%
gdp = xlsread("qa_gdp_national.xlsx");
mp = xlsread("MP_shocks.xlsx");
mp = mp(21:64, 2);
y = [gdp, mp];

[T,N] = size(y);
p = 4;
c = 1;

[beta, residuals] = VAR(y, p, c);
sigma = residuals' * residuals / (T - N*p - p - 1);
