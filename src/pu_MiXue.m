% ��ѩ����
global k
k = 62; % ��׼�� 1��D;   ���� C=60 D62 E64 F65 G67 A69 B71

mi1 = [mi(8) so(8) so(816) la(16)]; % �㰮��ѽ
mi2 = [so(8) mi(8) do(8) do(16) re(16)]; % �Ұ���, ��ѩ
mi3 = [mi(8) mi(16) re(16) re(8) do(8) re(48) res(8)]; % ����������
part1 = [mi1 mi2 mi3];

mi4 = [so(8) mi(8) do(816) re(16)]; % �Ұ���, ��
mi5 = [mi(8) mi(8) re(8) re(8) do(48) res(8)]; % ѩ����������
part2 = [mi1 mi4 mi5];

part3 = [fa(4) fa(4) la(8) la(4) res(8) so(4) so(8) mi(8) re(4) res(4)];

mi6 = [mi(8) mi(8) re(816) re(16) do(2)];
part4 = [mi1 mi2 mi6];

pu = [part1 part2 part3 part4];