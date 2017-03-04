---
external help file: Microsoft.Azure.Commands.OperationalInsights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: B4A7AEC5-9133-41F2-840D-89AD9377A297
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Get-AzureOperationalInsightsWorkspace.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Get-AzureOperationalInsightsWorkspace.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Get-AzureOperationalInsightsWorkspace.md
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

# Get-AzureOperationalInsightsWorkspace

## SYNOPSIS
Gets an Operational Insights workspace.

## SYNTAX

```
Get-AzureOperationalInsightsWorkspace [[-ResourceGroupName] <String>] [[-Name] <String>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureOperationalInsightsWorkspace** cmdlet gets an existing Operational Insights workspace.
Specify the *Name* parameter to get a workspace by its name.
If you do not specify the *Name* parameter, this cmdlet gets all of the workspaces in a specified resource group.
If you do not specify a name and a resource group, this cmdlet gets all of the workspaces in the subscription.

## EXAMPLES

### Example 1: Get a workspace by name
```
PS C:\>Get-AzureOperationalInsightsWorkspace -Name "MyWorkspace" -ResourceGroupName "ContosoResourceGroup"
```

This command gets a workspace named MyWorkspace in the resource group named ContosoResourceGroup.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the Azure resource group that contains the workspace to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the workspace to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureProfile
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

[New-AzureOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/New-AzureOperationalInsightsWorkspace.md)

[Remove-AzureOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/Remove-AzureOperationalInsightsWorkspace.md)

[Set-AzureOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/Set-AzureOperationalInsightsWorkspace.md)


