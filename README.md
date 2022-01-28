# playMusic

 Matlab 演奏音乐

## 曲谱文件编写说明

|音调|简谱符号|函数|
|:--:|:--:|:--:|
|C|1|do|
|D|2|re|
|E|3|mi|
|F|4|fa|
|G|5|so|
|A|6|la|
|B|7|xi|
|修止符|0|res|

函数括号内两个参数，分别表示音长、高低音:

- do(8, 1): 八分音符，高音 $\dot{1}$
- so(4, -1): 四分音符，低音 $\underset {\cdot}{5}$
- mi(16): 十六分音符，中音 3 （第二个参数缺省，表示中音）
