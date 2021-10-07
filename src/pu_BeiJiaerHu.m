% 乐谱－贝加尔湖畔
global k 
k = 72;  % 基准音 1＝     中央 C=60 D62 E64 F65 G67 A69 B71

be1=[res(8) la(16,-1) xi(16,-1) do(8) so(8) fa(2)  res(8) so(16,-1) la(16,-1) xi(8,-1) fa(8) mi(2)];
be2=[res(8) mi(16) mi(16) la(8) so(8) fa(8) re(4)];
be3=[res(16) do(16) xi(8,-1) do(16) re(816) fa(8) mi(2)];
be4=[res(16) do(16) xi(8,-1) mi(16) re(816) do(8)]; 

be5=[la(16,-1) la(16,-1) la(8,-1) la(8) la(2)];
be6=[res(8) la(16,-1) la(16) so(8) la(16) so(16) mi(2)];
be7=[res(8) xi(16) do(16,1) re(8,1) do(8,1) mi(2)];
be8=[res(8) mi(16) mi(16) la(8) so(8) fa(8) re(48)  so(8) la(16) xi(816) xi(8) mi(48,1) re(16,1) do(16,1) xi(24) res(4)];

par1=[be1 be2 be3 be1 be2 be4  la(8,-1)]; 
par2=[be5 be6 be2 be3    be5 be7 be8];
par3=[be1 be2 be4 la(4,-1) be2 be4 la(24,-1)];

pu = [par1];