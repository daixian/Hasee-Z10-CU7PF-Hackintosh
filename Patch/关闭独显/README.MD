# 关闭独立显卡
|名字|功能|记录|
|-|-|-|
|GSSDT-DDGPU|Disable Nvidia discrete GPU (credit @Goshin)|这个里面需要改名_WAK和_PTS，不知道是做什么用的|
|SSDT-dGPU-Off|来自官方文档里的简单关闭GPU|

## 问题
目前没有关掉。。
从bios里直接关独显确实右边出风口的温度更低，风扇基本不转（在windows下有驱动的时候也能实现这样的噪音水平），目前的SSDT确实没有完全关掉。
* 搜索_OFF只有2，和8里有OFF
* 搜索_PS3只有8，9里有PS3
* 按论坛上的求助只看了那个独显设备没了但是没有管是否还在耗电。