---
external help file: Microsoft.Azure.Commands.Websites.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: F8189B01-350F-4901-83CC-14BD4DF54EF2
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Websites/v2.1.0/Start-AzureRMWebAppSlot.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Websites/v2.1.0/Start-AzureRMWebAppSlot.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Websites/v2.1.0/Start-AzureRMWebAppSlot.md
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

# Start-AzureRmWebAppSlot

## SYNOPSIS
Starts an Azure Web App slot.

## SYNTAX

### S1
```
Start-AzureRmWebAppSlot [-ResourceGroupName] <String> [-Name] <String> [-Slot] <String> [<CommonParameters>]
```

### S2
```
Start-AzureRmWebAppSlot [-WebApp] <Site> [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureRmWebAppSlot** cmdlet starts an Azure Web App slot.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group that the slot is assigned to.

```yaml
Type: String
Parameter Sets: S1
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the slot to start.

```yaml
Type: String
Parameter Sets: S1
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Slot
Specifies the Web App slot.
To get a Web App slot, use the Get-AzureRMWebAppSlot cmdlet.

```yaml
Type: String
Parameter Sets: S1
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WebApp
Specifies a Web App.
To get a Web App, use the Get-AzureRmWebApp cmdlet.

```yaml
Type: Site
Parameter Sets: S2
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRMWebAppSlot](xref:ResourceManager/AzureRM.Websites/v2.1.0/Get-AzureRMWebAppSlot.md)

[New-AzureRMWebAppSlot](xref:ResourceManager/AzureRM.Websites/v2.1.0/New-AzureRMWebAppSlot.md)

[Remove-AzureRMWebAppSlot](xref:ResourceManager/AzureRM.Websites/v2.1.0/Remove-AzureRMWebAppSlot.md)

[Restart-AzureRMWebAppSlot](xref:ResourceManager/AzureRM.Websites/v2.1.0/Restart-AzureRMWebAppSlot.md)

[Set-AzureRMWebAppSlot](xref:ResourceManager/AzureRM.Websites/v2.1.0/Set-AzureRMWebAppSlot.md)

[Stop-AzureRMWebAppSlot](xref:ResourceManager/AzureRM.Websites/v2.1.0/Stop-AzureRMWebAppSlot.md)

[Get-AzureRmWebApp](xref:ResourceManager/AzureRM.Websites/v2.1.0/Get-AzureRmWebApp.md)


