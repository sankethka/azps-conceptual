---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
ms.assetid: 8180092D-5B1D-43A0-B830-D009B30E2DDF
online version: 
schema: 2.0.0
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.3.0/Remove-AzureRmContainerService.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.3.0/Remove-AzureRmContainerService.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.3.0/Remove-AzureRmContainerService.md
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

# Remove-AzureRmContainerService

## SYNOPSIS
Removes a container service.

## SYNTAX

```
Remove-AzureRmContainerService [-ResourceGroupName] <String> [-Name] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmContainerService** cmdlet removes a container service from your Azure account.

## EXAMPLES

### Example 1: Remove a container service
```
PS C:\>Remove-AzureRmContainerService -ResourceGroupName "ResourceGroup17" -Name "CSResourceGroup17"
```

This command removes the container service named CSResourceGroup17.

## PARAMETERS

### -Name
Specifies the name of the container service that this cmdlet removes.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the resource group of the container service that this cmdlet removes.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
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

[Get-AzureRmContainerService](xref:ResourceManager/AzureRM.Compute/v2.3.0/Get-AzureRmContainerService.md)

[New-AzureRmContainerService](xref:ResourceManager/AzureRM.Compute/v2.3.0/New-AzureRmContainerService.md)

[Update-AzureRmContainerService](xref:ResourceManager/AzureRM.Compute/v2.3.0/Update-AzureRmContainerService.md)


