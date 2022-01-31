global k
k = 67;

% m11 = [res(16) so(16) la(16) do(16,1)];
% m12 = [mi(16,1) mi(32,1) re(32,1) do(8,1)];
% m14 = [mi(16,1) mi(32,1) re(32,1) do(16,1) la(16)];
% m21 = [so(16) la(16) do(16,1) so(16) so(2)];
% m22 = [so(4) res(16) so(16) la(16) do(16,1)];
% m31 = m12;
% m33 = m14;
% m34 = [so(16) la(16) do(16,1) re(16,1) do(1,1)];

% Ç°×à
% part1 = [m11 m12 m12 m14 m21 m22]; 
% part2 = [m31 m31 m33 m34];

% m1 = [mi(8,1) mi(16,1) re(16,1)];
% m2 = [do(4,1) m1];
% m4 = [do(8,1) so(8) mi(8) la(8)];
% m5 = [so(816) la(16) so(8) la(8)];
% m8 = [so(8) xi(32) la(1632)];  % half of a measure
% m10 = [so(16,1) la(16,1)];  % 1/4 of a measure
% m12 = [so(4,1) so(4,1) so(2,2)];
% 
% part1 = [m1 m2 m2 m4 m5 m5 m5];
% part2 = [m8 m8 m8 m8 m10 m10 m10 m10 m12];


s1 = [mi(8) re(4) mi(8) so(48) la(8) do(4,1) la(8) mi(8,1) do(2,1)];
s2 = [mi(8,1) xi(4) la(8) so(8) mi(4) so(8) la(816) so(16) la(16) la(816) so(2)];
s3 = [so(816) la(16) do(4,1) la(8) do(4,1) re(8,1) do(4,1) la(8) so(8) mi(2)];
s4 = [so(816) la(16) do(4,1) re(8,1) do(4,1) xi(8) la(816) so(16) la(16) la(816) so(2)];

m11 = [mi(16,1) mi(32,1) re(32,1) do(16,1) mi(16)];
m12 = [re(16,1) do(8,1) la(16)];
m13 = [so(16) la(16) so(16) la(16)];
m14 = [re(16,1) mi(16,1) re(16,1) mi(16,1)];
m2 = [mi(16) so(16) re(16) mi(16) so(4)];

part1 = [s1 s2 s3 s4];
part2 = [m11 m12 m13 m14 m2];


pu = [part1 part2];