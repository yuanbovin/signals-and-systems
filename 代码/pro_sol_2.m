%进行傅里叶变换
%求幅度谱与相位谱
figure(1);
freqz(b1,a1);title("Butter");
figure(2)
freqz(b2,a2);title("Remez-n2");
figure(3)
freqz(b3,a3);title("Remez-n3");