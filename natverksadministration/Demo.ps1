$Name = "Åsas VM"
$IsoPath = "C:\ISOs\17763.737.190906-2324.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us_1.iso"

New-VM -Name $Name -MemoryStartupBytes 2000MB
Set-VMProcessor $Name -Count 4
Set-VMDvdDrive -VMName $Name -Path $IsoPath