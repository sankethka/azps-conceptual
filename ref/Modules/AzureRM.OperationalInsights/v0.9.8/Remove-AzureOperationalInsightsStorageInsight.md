---
external help file: Microsoft.Azure.Commands.OperationalInsights.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: BD3FD907-4776-4E3A-992C-4C60D7165728
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Remove-AzureOperationalInsightsStorageInsight.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Remove-AzureOperationalInsightsStorageInsight.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.OperationalInsights/v0.9.8/Remove-AzureOperationalInsightsStorageInsight.md
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

# Remove-AzureOperationalInsightsStorageInsight

## SYNOPSIS
Deletes an existing storage insight.

## SYNTAX

### ByWorkspaceName (Default)
```
Remove-AzureOperationalInsightsStorageInsight [-ResourceGroupName] <String> [-WorkspaceName] <String>
 [-Name] <String> [-Force] [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByWorkspaceObject
```
Remove-AzureOperationalInsightsStorageInsight [-Workspace] <PSWorkspace> [-Name] <String> [-Force]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureOperationalInsightsStorageInsight** cmdlet deletes an existing storage insight from a workspace.

## EXAMPLES

### Example 1: Remove a storage insight by name
```
PS C:\>Remove-AzureOperationalInsightsStorageInsight -ResourceGroupName "ContosoResourceGroup" -WorkspaceName "MyWorkspace" -Name "MyStorageInsight"
```

This command removes the storage insight named MyStorageInsight from the workspace named MyWorkspace in the specified resource group.
The command does not specify the *Force* parameter, so it prompts you for confirmation before removing the storage insight.

### Example 2: Remove a storage insight without confirmation
```
PS C:\>$Workspace = Get-AzureOperationalInsightsWorkspace -ResourceGroupName "ContosoResourceGroup" -Name "MyWorkspace"
PS C:\> Remove-AzureOperationalInsightsStorageInsight -Workspace $Workspace -Name "MyStorageInsight" -Force
```

The first command uses the Get-AzureOperationalInsightsWorkspace cmdlet to get the workspace named MyWorkspace, and then stores it in the $Workspace variable.

The second command removes the storage insight named MyStorageInsight from $Workspace without prompting you for confirmation.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the Azure resource group that contains the storage insight to remove.

```yaml
Type: String
Parameter Sets: ByWorkspaceName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WorkspaceName
Specifies the name of the workspace that contains the storage insight to remove.

```yaml
Type: String
Parameter Sets: ByWorkspaceName
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the storage insight to remove.

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

### -Workspace
Specifies the workspace that contains the storage insight to remove.

```yaml
Type: PSWorkspace
Parameter Sets: ByWorkspaceObject
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

[Get-AzureOperationalInsightsStorageInsight](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/Get-AzureOperationalInsightsStorageInsight.md)

[New-AzureOperationalInsightsStorageInsight](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/New-AzureOperationalInsightsStorageInsight.md)

[Set-AzureOperationalInsightsStorageInsight](xref:ResourceManager/AzureRM.OperationalInsights/v0.9.8/Set-AzureOperationalInsightsStorageInsight.md)


