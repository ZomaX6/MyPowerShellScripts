
<#PSScriptInfo

.VERSION 1.0.1

.GUID 937de923-8b15-46b4-8db1-c47b7edc7344

.AUTHOR m.tepes@phoenixlab.one

.COMPANYNAME PHOENIX Pharma d.o.o.

.COPYRIGHT 

.TAGS 

.LICENSEURI 

.PROJECTURI 

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


#>

<# 

.DESCRIPTION 
 Test script 

#> 

Param()


Get-Process | Select-Object Name, Id, @{n="WorkingSet"; e={[math]::Round(($_.WS / 1MB), 2)}} | Sort-Object WorkingSet -Descending | Export-Csv C:\Scripts\Report1.csv -NoTypeInformation
