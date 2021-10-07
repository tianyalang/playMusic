%% 乐谱－月亮代表我的心
global k 
k = 72;

mo1=[res(8) so(8,-1) do(48) mi(8) so(48)   do(8) xi(48,-1) mi(8) so(4)];
mo2=[res(8) so(8) la(48) xi(8) do(48,1) la(4) so(28)];   mo22=[res(8) so(8) la(48) xi(8) do(48,1) la(8) so(24)];
mo3=[mi(8) re(8) do(48) do(8) do(4)];
mo4=[re(8) mi(8) re(48) do(8) la(4,-1) re(8) mi(8) re(24)];
mo5=[re(8) mi(8) re(48) la(8,-1) xi(4,-1) do(8) re(8) do(24)];  mo55=[re(8) mi(8) re(48) la(8,-1) xi(4,-1) do(8) re(8) do(1)];

mo6=[mi(8) so(8) mi(48) re(8) do(4) so(4) xi(24,-1)  la(8,-1) xi(8,-1) la(48,-1) xi(8,-1) la(4,-1) so(4,-1) mi(24)];
mo7=[      so(4) mi(48) re(8) do(4) so(4) xi(24,-1)  la(8,-1) xi(8,-1) do(48) do(8) do(4) re(8) mi(8) re(24)];

part1=[mo1 mo2 mo3 mo3 mo4];
part2=[mo1 mo2 mo3 mo3 mo5];
part3=[mo6 mo7 part2];
part4=[mo1 mo22 mo3 mo3 mo55];

pu = [part3];