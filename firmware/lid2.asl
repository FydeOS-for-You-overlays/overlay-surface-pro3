DefinitionBlock ("", "DSDT", 1, "", "", 0x20200825)
{
  Method (\_SB_.PCI0.SBRG.EC0._Q37, 0, Serialized)
  {
    LIDS = One
    Notify (LID0, 0x80) // Status Change
  }
}
