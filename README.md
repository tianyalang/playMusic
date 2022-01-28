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

函数括号内两个参数（第2个参数可缺省），分别表示音长、高低音:

- do(8): 八分音符，中音 1
- mi(4, 1): 四分音符，高8度的 3 （上方加一点）
- so(16,-1): 十六分音符，低8度的 5 （下方加一点）
