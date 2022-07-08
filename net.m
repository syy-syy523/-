function y = net(func,start,pre,epoch)
%syms x;
k = 1;
df = diff(func);
df
while(k<epoch)
    if feval(@(x)df,start)==0
        I = -1;
        break
    else
        y = start - feval(@(x)func,start)/feval(@(x)df,start);
        
    end
    if abs(y-start)<pre
        I = 0;
        fprintf('epoch:%d,root:%s',k,y);
        break
    end
    start = y;
    k = k+1;
end
fprintf('status I:%d',I);
end