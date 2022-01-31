function g = key(p, varargin)  
    % 第一维表音符时长，第二维表高低音（-1:低8度，1:高8度, 2:高16度，缺省为中音）
    n = varargin{1};  % 分离音符变量，2表二分音符，4表四分音符，48表四分音符+八分音符，416表四分音符+十六分音符
    if nargin > 2
        p = p + 12*varargin{2};
    end
    
    t0 = 3; % 全音符时长
    switch n
        case {1,2,4,8,16,32}
            t = t0/n;
        otherwise      %延时音计算
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

function g = wave(p, tt) % 波形生成
    fs = 44100;  % 采样率，MP3 standard
    t = 0:1/fs:tt;
    
    n = length(t);  %总采样点
    n1 = round(n/10);
    n3 = n1;
    n2 = n-n1-n3;
    
    if p==0
        g=zeros(1,n);
    else
    %     f1=linspace(0,1,n1); %直线包络,首段升，中段平，尾段降
    %     f2=ones(1,n2);
    %     f3=linspace(1,0,n3);
        f1 = (exp(linspace(0,1,n1))-1)/(exp(1)-1); %指数包络,首段升，中段平，尾段降
        f2 = ones(1,n2);
        f3 = (exp(linspace(1,0,n3))-1)/(exp(1)-1); %应让每一个音 首末位置振幅小，才能前后音过渡正常
        f=[f1 f2 f3];

        % 混入倍频波，让音色更好，倍频波幅值自定
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