# 开启电源管理，启用X86PlatformPlugin

SSDT-PLUG设置为您的CPU的第一个线程，您可以通过选择列出的第一个CPU（CP00对于我们的示例）进行检查，并确保在属性中具有此功能：
plugin-type | Number | 0x1

* SSDT-PLUG-_SB.PR00：来自OC-Lite库
* SSDT-PLUG-DRTNIA：来自官方 https://dortania.github.io/Getting-Started-With-ACPI/ssdt-methods/ssdt-prebuilt.html#power-management