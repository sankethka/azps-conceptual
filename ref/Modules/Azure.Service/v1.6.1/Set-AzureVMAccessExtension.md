---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 373F1D30-E11A-4345-A482-2DAA16BFBCBE
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Set-AzureVMAccessExtension.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Set-AzureVMAccessExtension.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Set-AzureVMAccessExtension.md
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

# Set-AzureVMAccessExtension

## SYNOPSIS
Sets the VMAccess extension for a virtual machine.

## SYNTAX

### EnableAccessExtension (Default)
```
Set-AzureVMAccessExtension [[-UserName] <String>] [[-Password] <String>] [[-ReferenceName] <String>]
 [[-Version] <String>] [-ForceUpdate] -VM <IPersistentVM> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### DisableAccessExtension
```
Set-AzureVMAccessExtension [-Disable] [[-ReferenceName] <String>] [[-Version] <String>] [-ForceUpdate]
 -VM <IPersistentVM> [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### UninstallAccessExtension
```
Set-AzureVMAccessExtension [-Uninstall] [[-ReferenceName] <String>] [[-Version] <String>] [-ForceUpdate]
 -VM <IPersistentVM> [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureVMAccessExtension** cmdlet sets the VMAccess extension for the virtual machine.

## EXAMPLES

### Example 1: Set the VMAccess extension applied to a specified virtual machine
```
PS C:\>Set-AzureVMAccessExtension -VM $VM -UserName $User -Password $PWD;
```

This command sets the VMAccess extension applied to the specified virtual machine as stored in the variable $VM.

## PARAMETERS

### -UserName
Specifies the user name that this cmdlet uses to reset the virtual machine's credential.

```yaml
Type: String
Parameter Sets: EnableAccessExtension
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Password
Specifies the password for resetting the virtual machine's credential.

```yaml
Type: String
Parameter Sets: EnableAccessExtension
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ReferenceName
Specifies the reference name of the access extension.

This is a user-defined string that is used to refer to an extension.
It is specified when the extension is added to the virtual machine for the first time.
For subsequent updates, you should specify the previously used reference name while updating the extension.
The *ReferenceName* assigned to an extension is returned using the Get-AzureVM cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Version
Specifies the version of the extension.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ForceUpdate
Indicates that this cmdlet reapplies a configuration to an extension when the configuration has not been updated.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies the persistent virtual machine object.

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
ps_azureprofile_description

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

### -Disable
Indicates that this cmdlet sets the Extension State to Disable.

```yaml
Type: SwitchParameter
Parameter Sets: DisableAccessExtension
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Uninstall
Indicates whether this cmdlet uninstalls the access extension.

```yaml
Type: SwitchParameter
Parameter Sets: UninstallAccessExtension
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVMAccessExtension](xref:ServiceManagement/Azure.Service/v1.6.1/Get-AzureVMAccessExtension.md)

[Remove-AzureVMAccessExtension](xref:ServiceManagement/Azure.Service/v1.6.1/Remove-AzureVMAccessExtension.md)


