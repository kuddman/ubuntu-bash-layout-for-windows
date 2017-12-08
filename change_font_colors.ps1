
Get-ChildItem "HKCU:\Console\*ubuntu*" | ForEach-Object {
Set-ItemProperty -Path Registry::$($_.Name) -Name FaceName -Value "Ubuntu Mono"
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable00 -Value 2361904
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable01 -Value 10773812
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable02 -Value 432718
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable03 -Value 10131462
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable04 -Value 204
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable05 -Value 8081525
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable06 -Value 41156
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable07 -Value 13621203
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable08 -Value 5461845
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable09 -Value 13606770
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable10 -Value 3465866
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable11 -Value 14869044
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable12 -Value 2697711
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable13 -Value 11042733
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable14 -Value 5237244
Set-ItemProperty -Path Registry::$($_.Name) -Name ColorTable15 -Value 15658734
#
#
#
Set-ItemProperty -Path Registry::$($_.Name) -Name FontFamily -Value 54
Set-ItemProperty -Path Registry::$($_.Name) -Name FontSize -Value 1048576
Set-ItemProperty -Path Registry::$($_.Name) -Name FontWeight -Value 400
Set-ItemProperty -Path Registry::$($_.Name) -Name InsertMode -Value 0
Set-ItemProperty -Path Registry::$($_.Name) -Name PopupColors -Value 240
Set-ItemProperty -Path Registry::$($_.Name) -Name ScreenBufferSize -Value 19660925
Set-ItemProperty -Path Registry::$($_.Name) -Name ScreenColors -Value 15
}