---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
ms.assetid: 93A8B8EC-4ED0-4C87-AF92-9A246ECEF4F0
online version: 
schema: 2.0.0
updated_at: 12/19/2016 11:23 PM
ms.date: 12/19/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.1.0/Remove-AzureVMAccessExtension.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.1.0/Remove-AzureVMAccessExtension.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/b56b3462496e95231571c08a11cb4a133d515348/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.1.0/Remove-AzureVMAccessExtension.md
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

# Remove-AzureVMAccessExtension

## SYNOPSIS
Removes the VMAccess extension applied on a virtual machine.

## SYNTAX

```
Remove-AzureVMAccessExtension -VM <IPersistentVM> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureVMAccessExtension** cmdlet removes the VMAccess extension applied on a virtual machine.

## EXAMPLES

### Example 1: Remove a VMAccess extension from a virtual machine
```
PS C:\> Remove-AzureVMAccessExtension -VM $VM;
```

This command removes a VMAccess extension from a virtual machine.

## PARAMETERS

### -VM
Specifies the persistent virtual machine object that this cmdlet removes the VMAccess extension from.

```yaml
Type: IPersistentVM
Parameter Sets: (All)
Aliases: InputObject

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureSMProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

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

## NOTES

## RELATED LINKS

[Get-AzureVMAccessExtension](xref:ServiceManagement/Azure.Service/v3.1.0/Get-AzureVMAccessExtension.md)

[Set-AzureVMAccessExtension](xref:ServiceManagement/Azure.Service/v3.1.0/Set-AzureVMAccessExtension.md)


