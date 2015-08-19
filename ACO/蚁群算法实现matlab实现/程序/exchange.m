function route_new=exchange(route)         %ĞÂÂ·¾¶ÈÅ¶¯
A=randperm(length(route)-2)+1;
tem1=A(1);
tem2=A(2);
temp1=min(tem1,tem2);
temp2=max(tem1,tem2);
route_new=[route(1:temp1-1) route(temp2:-1:temp1) route(temp2+1:end)];