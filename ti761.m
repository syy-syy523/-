options = optimset('largescale','off');
[x,y] = fmincon('f',[0,0,0,0,0,0,0],[],[],[],[],-pi/6,pi/6,'nolinear',options)