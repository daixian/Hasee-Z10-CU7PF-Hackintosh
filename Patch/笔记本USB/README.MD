# USB相关
## SSDT-RHUB
官网写第十代CPU需要，技嘉和AsRock主板不需要这个。实际加上这个目前所有的USB外设硬盘无法显示。
## USB定制
目前存放了usb定制时的输出SSDT文件，定制的设备一共有13个。SSDT-EC-USBX.aml和SSDT-UIAC.aml。
直接加入这两个SSDT，没有影响的，因为我的USB设备就在IOUSB下面也能看到，并且这13个接口我没看出有什么问题。
IOPower:/IOPowerConnection/IOPMrootDomain/IOPowerConnection/AppleACPIPCI/IOPowerConnection/XHC@14
* 传统的定制USB方法中的EHC1和EHC2我这里貌似压根没有。那几个所谓补丁修改的位置我这都没有，懒得搞了。
* 国内小白的教程让人看了难受，不想再看了。