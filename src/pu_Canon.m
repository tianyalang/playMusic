global k
k = 60;

m11 = [so(8,1) mi(16,1) fa(16,1) so(8,1) mi(16,1) fa(16,1)];
m12 = [so(16,1) xi(16) la(16) xi(16) do(16,1) re(16,1) mi(16,1) fa(16,1)];
m21 = [mi(8,1) do(16,1) re(16,1) mi(8,1) mi(16) fa(16)];
m22 = [so(16) la(16) so(16) fa(16) so(16) do(16,1) xi(16) do(16,1)];
m31 = [la(8) do(16,1) xi(16) la(8) so(16) fa(16)];
m32 = [so(16) fa(16) mi(16) fa(16) so(16) la(16) xi(16) do(16,1)];
m41 = [la(8) do(16,1) xi(16) do(8,1) xi(16) do(16,1)];
m42 = [xi(16) la(16) xi(16) do(16,1) re(16,1) mi(16,1) fa(16,1) so(16,1)];

part1 = [m11 m12 m21 m22 m31 m32 m41 m42];

m51 = [mi(8,1) do(16,1) re(16,1) mi(8,1) re(16,1) do(16,1)];
m52 = [re(16,1) xi(16) do(16,1) re(16,1) mi(16,1) re(16,1) do(16,1) xi(16)];
m61 = [do(8,1) la(16) xi(16) do(8,1) do(16) re(16)];
m62 = [mi(16) fa(16) mi(16) re(16) mi(16) do(16,1) xi(16) do(16,1)];
m71 = m31;
m72 = m32;
m81 = [la(8) do(16,1) xi(16) do(8,1) xi(16) la(16)];
m82 = [xi(16) do(16,1) re(16,1) do(16,1) xi(16) do(16,1) la(16) xi(16)];
m9 = [do(2,1)];
part2 = [m51 m52 m61 m62 m71 m72 m81 m82 m9];

pu = [part1 part1 part2];
