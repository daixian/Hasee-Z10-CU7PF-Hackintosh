# 触摸板
## 让系统为windows
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