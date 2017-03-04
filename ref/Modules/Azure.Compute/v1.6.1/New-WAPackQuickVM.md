---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 9A15A170-0AF9-4264-8610-284063545956
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/New-WAPackQuickVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/New-WAPackQuickVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/New-WAPackQuickVM.md
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

# New-WAPackQuickVM

## SYNOPSIS
Creates a virtual machine based on a template.

## SYNTAX

```
New-WAPackQuickVM -Name <String> -Template <VMTemplate> -VMCredential <PSCredential>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
ps_redir_wap This topic describes the cmdlet in the 0.8.1 version of the Microsoft Azure PowerShell module.
To find out the version of the module you're using, from the Azure PowerShell console, type (get-module azure).version.

The **New-WAPackQuickVM** cmdlet creates a virtual machine based on a template.

## EXAMPLES

### Example 1: Create a virtual machine based on a template
```
PS C:\>$Credentials = Get-Credential
PS C:\> $TemplateId = Get-WAPackVMTemplate -Id 66242D17-189F-480D-87CF-8E1D749998C8
PS C:\> New-WAPackQuickVM -Name "VirtualMachine023" -Template $TemplateId -VMCredential $Credentials
```

The first command creates a **PSCredential** object, and then stores it in the $Credentials variable.
The cmdlet prompts you for an account and password.
For more information, type `Get-Help Get-Credential`.

The second command gets a template by using the **Get-WAPackVMTemplate** cmdlet.
The command specifies the ID of a template.
The command stores the template object in the $TemplateID variable.

The final command creates a virtual machine named VirtualMachine023.
The command bases the virtual machine on the template stored in $TemplateId.

## PARAMETERS

### -Name
Specifies a name for the virtual machine.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Template
Specifies a template.
The cmdlet creates a virtual machine based on the template that you specify.
To obtain a template object, use the **Get-WAPackVMTemplate** cmdlet.

```yaml
Type: VMTemplate
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VMCredential
Specifies the credential for the local Administrator account.
To obtain a **PSCredential** object, use the **Get-Credential** cmdlet.
For more information, type `Get-Help Get-Credential`.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
In-memory profile.

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

## NOTES

## RELATED LINKS

[New-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/New-WAPackVM.md)

[Get-WAPackVMTemplate](xref:ServiceManagement/Azure.Compute/v1.6.1/Get-WAPackVMTemplate.md)


