# EC相关
> OpenCore 要求不要改变 EC 控制器名称，但是为了加载 USB 电源管理，可能需要仿冒另一个 EC。
>
> 使用说明
>
> DSDT中搜索 PNP0C09，查看其所属设备名称。如果名称不是 EC，使用本补丁；如果是 EC，忽略本补丁。
> 注意
> 如果搜索到多个 PNP0C09，应确认真实有效的 PNP0C09 设备。
> 补丁里使用了 LPCB，非 LPCB 的请自行修改补丁内容。

[补丁就是简单的加了个空EC](https://github.com/daliansky/OC-little/blob/master/02-%E4%BB%BF%E5%86%92%E8%AE%BE%E5%A4%87/02-1-%E4%BB%BF%E5%86%92EC/SSDT-EC.dsl)

搜索到自己的设备名字叫EC，所以我不需要管这个。
``` ASL
Scope (_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Mutex (PATM, 0x00)
            Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
            Method (_GPE, 0, NotSerialized)  // _GPE: General Purpose Events
            {
                Local0 = GGPE (CSCI)
                Return (Local0)
            }
...
```