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
## 貌似成功了
关闭GPU的官方文档https://dortania.github.io/Getting-Started-With-ACPI/Laptops/laptop-disable.html
虽然看别人的EFI一般都是采用的方法一，但是我使用方法一仍然有独显区域发热问题。目前我按照该文档的方法二Bumblebee Method方法貌似可以成功，设备好像没有发热了。。。
* 使用的补丁名为SSDT-NoHybGfx.dsl
* 目前的状态是在IOR中能看到NXHC和PEGP设备。但是显卡确实处于低功耗的不发热模式。
## 疑惑
1. 检查方法一到底成功的与否的标准是什么，如果成功了在IOR中会看不到显卡设备吗。我使用方法一在IOR中看不到PEGP了，但是实际显卡仍有发热。

