---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: BBEF4EBD-BD0F-4408-A988-14AE36C24F7C
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMDscExtension.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMDscExtension.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMDscExtension.md
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

# Get-AzureVMDscExtension

## SYNOPSIS
Gets the settings of the DSC extension on a virtual machine.

## SYNTAX

```
Get-AzureVMDscExtension -VM <IPersistentVM> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVMDscExtension** cmdlet gets the settings of the DSC extension on a virtual machine.

## EXAMPLES

### Example 1: Get the setting of the DSC Extension on a virtual machine
```
PS C:\> Get-AzureVMDscExtension -VM $VMModulesUrl
https://myaccount.blob.core.contoso.net/windows-powershell-dsc/MyConfiguration.ps1.zipConfigurationFunction : MyConfiguration.ps1\MyConfigurationProperties            : {ServerName}ExtensionName         : DSCPublisher             : Microsoft.PowershellVersion               : 1.*PrivateConfiguration  :PublicConfiguration   : {"ModulesUrl": "https://myaccount.blob.core.contoso.net/windows-powershell-dsc/MyConfiguration.ps1.zip","ConfigurationFunction": "MyConfiguration.ps1\\MyConfiguration","Properties": {"ServerName": "C:\\MyDirectory"}}ReferenceName         : DSCState                 : EnableRoleName              : my-vm
```

This command gets the settings of the DSC Extension on a virtual machine.

## PARAMETERS

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.WindowsAzure.Commands.ServiceManagement.IaaS.Extensions.VirtualMachineDscExtensionContext

## NOTES

## RELATED LINKS

[Remove-AzureVMDscExtension](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureVMDscExtension.md)

[Set-AzureVMDscExtension](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureVMDscExtension.md)

[Get-AzureVMDscExtensionStatus](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMDscExtensionStatus.md)


