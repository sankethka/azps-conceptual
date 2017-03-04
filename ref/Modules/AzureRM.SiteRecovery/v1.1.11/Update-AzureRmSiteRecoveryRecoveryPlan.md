---
external help file: Microsoft.Azure.Commands.SiteRecovery.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: B50C0183-9E58-4D39-9655-30235FF54E04
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v1.1.11/Update-AzureRmSiteRecoveryRecoveryPlan.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v1.1.11/Update-AzureRmSiteRecoveryRecoveryPlan.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v1.1.11/Update-AzureRmSiteRecoveryRecoveryPlan.md
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

# Update-AzureRmSiteRecoveryRecoveryPlan

## SYNOPSIS
Updates a recovery plan in Site Recovery.

## SYNTAX

### ByRPObject (Default)
```
Update-AzureRmSiteRecoveryRecoveryPlan -RecoveryPlan <ASRRecoveryPlan> [<CommonParameters>]
```

### ByRPFile
```
Update-AzureRmSiteRecoveryRecoveryPlan -Path <String> [<CommonParameters>]
```

## DESCRIPTION
The **Update-AzureRmSiteRecoveryRecoveryPlan** cmdlet updates a recovery plan in Azure Site Recovery and then publishes it.

## EXAMPLES

### Example 1: Update a recovery plan
```
PS C:\>Update-AzureRmSiteRecoveryRecoveryPlan -File "C:\Users\Contoso\Desktop\RecoveryPlan.xml"
```

This command updates the specified recovery plan, and then publishes it.

## PARAMETERS

### -Path
Specifies the path of the recovery plan file of the recovery plan that this cmdlet updates.

```yaml
Type: String
Parameter Sets: ByRPFile
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryPlan
Specifies a recovery plan that this cmdlet updates.

```yaml
Type: ASRRecoveryPlan
Parameter Sets: ByRPObject
Aliases: 

Required: True
Position: Named
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

[Get-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v1.1.11/Get-AzureRmSiteRecoveryRecoveryPlan.md)

[New-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v1.1.11/New-AzureRmSiteRecoveryRecoveryPlan.md)

[Remove-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v1.1.11/Remove-AzureRmSiteRecoveryRecoveryPlan.md)


