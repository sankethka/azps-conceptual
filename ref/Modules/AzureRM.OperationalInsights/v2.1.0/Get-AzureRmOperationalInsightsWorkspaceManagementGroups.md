---
external help file: Microsoft.Azure.Commands.OperationalInsights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 74971C0D-3CCC-40AB-AD7A-6FFD7C76F8DC
updated_at: 11/18/2016 11:58 PM
ms.date: 11/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v2.1.0/Get-AzureRmOperationalInsightsWorkspaceManagementGroups.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v2.1.0/Get-AzureRmOperationalInsightsWorkspaceManagementGroups.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/72a3aea1f1ed5e83ed5c6c8596a219daeabbbe22/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v2.1.0/Get-AzureRmOperationalInsightsWorkspaceManagementGroups.md
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

# Get-AzureRmOperationalInsightsWorkspaceManagementGroups

## SYNOPSIS
Gets details of management groups connected to a workspace.

## SYNTAX

```
Get-AzureRmOperationalInsightsWorkspaceManagementGroups [-ResourceGroupName] <String> [-Name] <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmOperationalInsightsWorkspaceManagementGroups** cmdlet lists the management groups that are connected to a workspace.

## EXAMPLES

### Example 1: Get management groups by workspace name
```
PS C:\>Get-AzureRmOperationalInsightsWorkspaceManagementGroups -ResourceGroupName "ContosoResourceGroup" -Name "MyWorkspace"
```

This command gets the management groups for the workspace named MyWorkspace in the resource group named ContosoResourceGroup.

### Example 2: Get management groups by using the pipeline
```
PS C:\>Get-AzureRmOperationalInsightsWorkspace -ResourceGroupName "ContosoResourceGroup" -Name "MyWorkspace" | Get-AzureOperationalInsightsWorkspaceManagementGroups
```

This command uses the Get-AzureRmOperationalInsightsWorkspace cmdlet to get the workspace named MyWorkspace, and then passes the workspace to the current cmdlet, which gets the management groups for that workspace.

## PARAMETERS

### -ResourceGroupName
Specifies the name of an Azure resource group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the workspace name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
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

[Azure Operational Insights Cmdlets](xref:ResourceManager/AzureRM.OperationalInsights/v2.1.0/AzureRM.OperationalInsights.md)

[Get-AzureRmOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v2.1.0/Get-AzureRmOperationalInsightsWorkspace.md)


