---
external help file: Microsoft.Azure.Commands.OperationalInsights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E034160C-CCDA-4E19-8AA4-1965A5B68A33
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Remove-AzureOperationalInsightsWorkspace.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Remove-AzureOperationalInsightsWorkspace.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Remove-AzureOperationalInsightsWorkspace.md
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

# Remove-AzureOperationalInsightsWorkspace

## SYNOPSIS
Removes an Operational Insights workspace.

## SYNTAX

```
Remove-AzureOperationalInsightsWorkspace [-ResourceGroupName] <String> [-Name] <String> [-Force]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureOperationalInsightsWorkspace** cmdlet removes an existing Operational Insights workspace.
If this workspace was linked to an existing account by specifying the *CustomerId* parameter when it was created, the original account is not deleted in the Operational Insights portal.

## EXAMPLES

### Example 1: Remove a workspace by name
```
PS C:\>Remove-AzureOperationalInsightsWorkspace -ResourceGroupName "ContosResourceGroup" -Name "MyWorkspace"
```

This command removes the workspace named MyWorkspace from the resource group named ContosoResourceGroup.

### Example 2: Remove a workspace by using the pipeline and without confirmation
```
PS C:\>Get-AzureOperationalInsightsWorkspace -ResourceGroupName "ContosResourceGroup" -Name "MyWorkspace" | Remove-AzureOperationalInsightsWorkspace -Force
```

This command uses the Get-AzureOperationalInsightsWorkspace cmdlet to get the workspace named MyWorkspace, and then passes it to the current cmdlet to remove it.
Because the *Force* parameter is specified, the command does not prompt you before removing the workspace.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the Azure resource group that contains the workspace to remove.

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
Specifies the name of the workspace to remove.

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

### -Force
Forces the command to run without asking for user confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

[Get-AzureOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/Get-AzureOperationalInsightsWorkspace.md)

[New-AzureOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/New-AzureOperationalInsightsWorkspace.md)

[Set-AzureOperationalInsightsWorkspace](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/Set-AzureOperationalInsightsWorkspace.md)


