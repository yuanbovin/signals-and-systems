clc;
%导入参数
Wc=0.4;
key=input("输入：1进行无相位平移滤波，0进行有相位平移滤波");
n1=10;
n2=4;
% n3=12;
n3=10;
[b1,a1]=butter(n1,Wc);
a2=1;
b2=remez(n2,[0,Wc-0.04,Wc+0.04,1],[1,1,0,0]);
a3=1;
b3=remez(n3, [0 Wc-0.04 Wc+0.04 1], [1 1 0 0]);
N=1000;
% N=100;
%滤波器
% t=linspace(-N,N,2*N+1);
% Input=0*(t>=-N&t<0)+1*(t==0)+0*(t>0&t<=N);%冲激函数
t=linspace(-N,N);
Input=stepfun(t,0);

out_1_butter=filt(b1,a1,Input,key);
out_2_remez=filt(b2,a2,Input,key);
out_3_remez=filt(b3,a3,Input,key);
%plot
p1=plot(t,out_1_butter);hold on;
p2=plot(t,out_2_remez);hold on;
p3=plot(t,out_3_remez);
legend(["Butter","Remez-n2","Remez-n3"]);
%chaotiao
chaotiao_1=max(out_1_butter)-out_1_butter(end);
chaotiao_2=max(out_2_remez)-out_2_remez(end);
chaotiao_3=max(out_3_remez)-out_3_remez(end);
disp(["三个超调分别为：",chaotiao_1,chaotiao_2,chaotiao_3])

%相位