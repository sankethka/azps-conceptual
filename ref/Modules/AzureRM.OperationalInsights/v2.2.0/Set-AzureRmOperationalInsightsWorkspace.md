---
external help file: Microsoft.Azure.Commands.OperationalInsights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 5D3484EB-5002-45B0-8F67-772EFB9CB72A
updated_at: 11/18/2016 8:33 AM
ms.date: 11/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v2.2.0/Set-AzureRmOperationalInsightsWorkspace.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v2.2.0/Set-AzureRmOperationalInsightsWorkspace.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2537e371256820c5575d89299741a8f7b6f7e585/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v2.2.0/Set-AzureRmOperationalInsightsWorkspace.md
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

# Set-AzureRmOperationalInsightsWorkspace

## SYNOPSIS
Updates a workspace.

## SYNTAX

### ByName (Default)
```
Set-AzureRmOperationalInsightsWorkspace [-ResourceGroupName] <String> [-Name] <String> [[-Sku] <String>]
 [[-Tags] <Hashtable>] [<CommonParameters>]
```

### ByObject
```
Set-AzureRmOperationalInsightsWorkspace [-Workspace] <PSWorkspace> [[-Sku] <String>] [[-Tags] <Hashtable>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmOperationalInsightsWorkspace** cmdlet changes the configuration of a workspace.

## EXAMPLES

### Example 1: Modify a workspace by name
```
PS C:\>Set-AzureRmOperationalInsightsWorkspace -ResourceGroupName "ContosoResourceGroup" -Name "MyWorkspace" -Sku Standard -Tags @{ "Department" = "IT" }
```

This command modifies the SKU and tags of the workspace named MyWorkspace in the resource group named ContosoResourceGroup.

### Example 2: Update a workspace by using the pipeline
```
PS C:\>Get-AzureRmOperationalInsightsWorkspace -ResourceGroupName "ContosoResourceGroup" -Name "MyWorkspace" | Set-AzureRmOperationalInsightsWorkspace -Sku "Premium"
```

This command uses the Get-AzureRmOperationalInsightsWorkspace cmdlet to get the workspace named MyWorkSpace, and then passes it to the **Set-AzureRmOperationalInsightsWorkspace** cmdlet by using the pipeline operator to set the SKU to Premium.

## PARAMETERS

### -ResourceGroupName
Specifies the Azure resource group name.

```yaml
Type: String
Parameter Sets: ByName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the workspace name.

```yaml
Type: String
Parameter Sets: ByName
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Sku
Specifies the service tier of the workspace.
Valid values are: 

- free
- standard
- premium

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

### -Tags
Specifies the resource tags for the workspace.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Workspace
Specifies the workspace to be updated.

```yaml
Type: PSWorkspace
Parameter Sets: ByObject
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

[Azure Operational Insights Cmdlets](xref:ResourceManager/AzureRM.OperationalInsights/v2.2.0/AzureRM.OperationalInsights.md)

[Get-AzureRmOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v2.2.0/Get-AzureRmOperationalInsightsWorkspace.md)


