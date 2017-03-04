---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 2FE0B98E-77B0-4122-A5D0-3ED553F83B36
updated_at: 11/7/2016 11:36 PM
ms.date: 11/7/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolSettings.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolSettings.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/6b2ae75363a4a068e37ba677387ea47a1caaeea3/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolSettings.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# New-MsolSettings

## SYNOPSIS
Creates a directory setting.

## SYNTAX

### None (Default)
```
New-MsolSettings -SettingsObject <Settings> [<CommonParameters>]
```

### Scope
```
New-MsolSettings [-TargetType <TargetType>] [-TargetObjectId <String>] [-SettingsObject <Settings>]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-MsolSettings** cmdlet creates a directory setting.

## EXAMPLES

### Example 1: Add a directory setting
```
PS C:\> $Template = (Get-MsolAllSettingTemplate)[0]
PS C:\> $Settings = $Template.CreateSettingsObject() New-MsolSetting -SettingsObject $Settings
```

The first command gets all setting templates and stores the results in the variable named $Template.

The second command adds a directory setting stored in the variable named $Settings with default values to the tenant.

### Example 2: Add a directory setting to a specific target type
```
PS C:\> $Template = (Get-MsolAllSettingTemplate)[0] 
PS C:\> $Settings = $template.CreateSettingsObject() New-MsolSetting -SettingsObject $Settings -TargetType Groups -TargetObjectId
```

The first command gets all setting templates and stores the results in the variable named $Template.

The second command adds a directory setting stored in the variable named $Settings with default values to the tenant.
This command adds the settings to the Groups target type.

## PARAMETERS

### -SettingsObject
Specifies the **SettingsObject** that contains necessary information to create a directory setting.

```yaml
Type: Settings
Parameter Sets: None
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

```yaml
Type: Settings
Parameter Sets: Scope
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -TargetType
Specifies the object type that settings objects are associated with.
If you do not specify a value, the cmdlet associates the target type with the tenant.

The acceptable values for this parameter are:

- Groups
- Users
- ServicePrincipals
- Applications
- Devices

```yaml
Type: TargetType
Parameter Sets: Scope
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -TargetObjectId
Specifies the object ID that settings objects are associated with.
If you do not specify a value, the cmdlet associates the object ID with the tenant.

```yaml
Type: String
Parameter Sets: Scope
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-MsolSettings](xref:MSOnline/v1/Get-MsolSettings.md)

[Remove-MsolSettings](xref:MSOnline/v1/Remove-MsolSettings.md)

[Set-MsolSettings](xref:MSOnline/v1/Set-MsolSettings.md)
