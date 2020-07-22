# 触摸板
## 让系统为windows->_OSI
这需要加入一个XOSI补丁然后，还要增加一个改名。
> 用于在macOS中仅启用Windows功能的情况下，请注意以下补丁很有可能会中断Windows通过OpenCore的启动。我强烈建议您自己做一个，以防止出现任何问题：
> 请注意，您需要将其添加到config.plist中ACPI -> Patch：
> | 评论 |	串	| 将_OSI更改为XOSI
> -------| ----|---------
> |已启用|布尔型|是|
> |计数|数|0|
> |限制|数|0|
> |找|数据|5f4f5349|
> |更换|数据|584f5349|

* 这里有一个类似的看看
https://github.com/CryptoNeverSleeps/DELL-XPS-7590-OLED
它的补丁可能没什么意义，我的z10的触摸板的中断应该是Advanced Programmable Interrupt Controller (APIC)高级可编程中断控制器
```
// Enable TPD0 GPIO pinning
// Patch: Rename USTP to One 
// Find: VVNUUBA=
// Replace: AaOjoxA=
// References:
// [1] https://github.com/xxxzc/xps15-9550-macos/issues/26#issuecomment-546838295
// [2] https://github.com/daliansky/OC-little/tree/master/09-OCI2C-TPXX%E8%A1%A5%E4%B8%81%E6%96%B9%E6%B3%95
// [3] https://github.com/alexandred/VoodooI2C/blob/master/Documentation/GPIO%20Pinning.md
DefinitionBlock ("", "SSDT", 2, "hack", "TPDX", 0x00000000)
{
    External (TPDM, FieldUnitObj)
    External (TPLT, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
//            TPLT = Zero // disable touchscreen
            TPDM = Zero // enable GPIO pinning for TPD0
        }
    }
}
```

## 问题解决
我的I2C2设备会导致触摸板驱动挂掉。。。所以我在驱动中去掉了支持这个设备。