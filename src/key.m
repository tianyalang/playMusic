function g = key(p, varargin)  
    % ��һά������ʱ�����ڶ�ά��ߵ�����-1:��8�ȣ�1:��8��, 2:��16�ȣ�ȱʡΪ������
    n = varargin{1};  % ��������������2�����������4���ķ�������48���ķ�����+�˷�������416���ķ�����+ʮ��������
    if nargin > 2
        p = p + 12*varargin{2};
    end
    
    t0 = 3; % ȫ����ʱ��
    switch n
        case {1,2,4,8,16,32}
            t = t0/n;
        otherwise      %��ʱ������
            if n<100
                a = floor(n/10);
                b = mod(n,10);
            else
                a = floor(n/100);
                b = mod(n,100);
            end
            
            t = t0*(1/a + 1/b);      
    end
    g = wave(p,t);
end

function g = wave(p, tt) % ��������
    fs = 44100;  % �����ʣ�MP3 standard
    t = 0:1/fs:tt;
    
    n = length(t);  %�ܲ�����
    n1 = round(n/10);
    n3 = n1;
    n2 = n-n1-n3;
    
    if p==0
        g=zeros(1,n);
    else
    %     f1=linspace(0,1,n1); %ֱ�߰���,�׶������ж�ƽ��β�ν�
    %     f2=ones(1,n2);
    %     f3=linspace(1,0,n3);
        f1 = (exp(linspace(0,1,n1))-1)/(exp(1)-1); %ָ������,�׶������ж�ƽ��β�ν�
        f2 = ones(1,n2);
        f3 = (exp(linspace(1,0,n3))-1)/(exp(1)-1); %Ӧ��ÿһ���� ��ĩλ�����С������ǰ������������
        f=[f1 f2 f3];

        % ���뱶Ƶ��������ɫ���ã���Ƶ����ֵ�Զ�
        g = f.*sin(2*pi*fre(p)*t);
        g = g + 0.2.*f.*sin(4*pi*fre(p)*t);
        g = g + 0.1.*f.*sin(6*pi*fre(p)*t);
        g = g + 0.02.*f.*sin(8*pi*fre(p)*t); 
    end
end

function f = fre(p)
    % calculate frequence
    f=440*2^((p-69)/12); % La(A):440Hz
end