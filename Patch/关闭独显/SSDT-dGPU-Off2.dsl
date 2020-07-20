/* Based off of Rebaman's work:
*  https://github.com/RehabMan/OS-X-Clover-Laptop-Config/blob/master/hotpatch/SSDT-DDGPU.dsl
*/
DefinitionBlock("", "SSDT", 2, "DRTNIA", "dGPU-Off", 0)
{
External(_SB.PCI0.PEG0._OFF, MethodObj) // ACPI Path of dGPU
External(_SB_.PCI0.PEG0.PEGP._PS3, MethodObj)    // 0 Arguments (from opcode)
External(_SB.PCI0.PEG1._OFF, MethodObj) 
External(_SB.PCI0.PEG2._OFF, MethodObj) 

    Device(RMD1)
    {
        Name(_HID, "DGPU2000") // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method(_INI)
        {
            If (_OSI ("Darwin"))
            {
               // disable discrete graphics (Nvidia/Radeon) if it is present
               If (CondRefOf(\_SB_.PCI0.PEG0.PEGP._PS3)) { \_SB_.PCI0.PEG0.PEGP._PS3() }
               If (CondRefOf(\_SB.PCI0.PEG0._OFF)) { \_SB.PCI0.PEG0._OFF() }       
               If (CondRefOf(\_SB.PCI0.PEG1._OFF)) { \_SB.PCI0.PEG1._OFF() }
               If (CondRefOf(\_SB.PCI0.PEG2._OFF)) { \_SB.PCI0.PEG2._OFF() }
            }
            Else
            {
            }
        }
    }
}