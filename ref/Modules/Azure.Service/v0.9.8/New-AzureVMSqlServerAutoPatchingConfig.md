---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 86631F82-2AD5-4B45-93C7-5F1BC0AB668F
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/New-AzureVMSqlServerAutoPatchingConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/New-AzureVMSqlServerAutoPatchingConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/New-AzureVMSqlServerAutoPatchingConfig.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: erickson-doug
open_to_public_contributors: False
ms.service: azure-powershell
---

# New-AzureVMSqlServerAutoPatchingConfig

## SYNOPSIS
Creates a configuration object for virtual machine automatic patching.

## SYNTAX

```
New-AzureVMSqlServerAutoPatchingConfig [-Enable] [-DayOfWeek <String>] [-MaintenanceWindowStartingHour <Int32>]
 [-MaintenanceWindowDuration <Int32>] [-PatchCategory <String>] [<CommonParameters>]
```

## DESCRIPTION
The** New-AzureVMSqlServerAutoPatchingConfig** cmdlet creates a configuration object for virtual machine automatic patching.

## EXAMPLES

### Example 1: Create a configuration object to configure automatic patching
```
PS C:\>$APS = New-AzureVMSqlServerAutoPatchingConfig -Enable -DayOfWeek "Thursday" -MaintenanceWindowStartingHour 11 -MaintenanceWindowDuration 120 -PatchCategory "Important"
          Enable                        : True
          DayOfWeek                     : Thursday
          MaintenanceWindowStartingHour : 11
          MaintenanceWindowDuration     : 120
          PatchCategory                 : Important
```

This command creates configuration object that can be used to configure automatic patching using Set-AzureVMSqlServerExtension.

## PARAMETERS

### -DayOfWeek
Specifies the day of the week when updates should be installed.

The acceptable values for this parameter are:

- Sunday
- Monday
- Tuesday
- Wednesday
- Thursday
- Friday
- Saturday
- Everyday

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Enable
Indicates that automated patching for the virtual machine is enabled.
If you enable automated patching the cmdlet will put Windows Update into interactive mode.
If you disable automated patching, Windows Update settings will not change.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaintenanceWindowStartingHour
Specifies the hour of the day when maintenance window starts.
This time defines when updates start installing and is rounded to the hour.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaintenanceWindowDuration
Specifies the duration of the maintenance window.
Automated patching will avoid performing an action that can impact a machine availability outside of that window.
Only 30 minutes increments are allowed.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PatchCategory
Specifies whether important updates should be included.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### AutoPatchingSettings
This cmdlet returns object contains settings for automated patching.

## NOTES

## RELATED LINKS

[Set-AzureVMSqlServerExtension](xref:ServiceManagement/Azure.Service/v0.9.8/Set-AzureVMSqlServerExtension.md)

[Remove-AzureVMSqlServerExtension](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureVMSqlServerExtension.md)

[Set-AzureVMSqlServerExtension](xref:ServiceManagement/Azure.Service/v0.9.8/Set-AzureVMSqlServerExtension.md)


