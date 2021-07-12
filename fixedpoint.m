clear all;close all;clc
fprintf('Fixed Point yöntemini kullanarak f(x)= x-2^(-2x) denkleminin köklerini bulma \n');
x1=0;
tol=0.1;
fprintf('Iter         x1       x2              Ea           ear       \n')
for i=1:50
    x2=2^(2*-x1);
    Ea = abs(x2-x1);
    ear=Ea / abs(x2);
    fprintf('%4.1f    %7.4f     %7.4f       %7.4f        %7.4f\n',i,x1,x2,Ea,ear);
    if abs(x2-x1)<tol
        break;
    else
        x1=x2;
    end
end
disp('Denklemin Kökü');
disp([x2])