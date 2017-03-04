---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 7159B631-7996-4C93-927B-5DC2FF2AB416
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscNodeConfiguration.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscNodeConfiguration.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscNodeConfiguration.md
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

# Get-AzureAutomationDscNodeConfiguration

## SYNOPSIS
Gets metadata for DSC node configurations in Automation.

## SYNTAX

### ByAll (Default)
```
Get-AzureAutomationDscNodeConfiguration [-RollupStatus <String>] [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByNodeConfigurationName
```
Get-AzureAutomationDscNodeConfiguration -Name <String> [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByConfigurationName
```
Get-AzureAutomationDscNodeConfiguration -ConfigurationName <String> [-RollupStatus <String>]
 [-ResourceGroupName] <String> [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationDscNodeConfiguration** cmdlet gets metadata for PowerShell Desired State Configuration (DSC) node configurations in Azure Automation.
Automation stores DSC node configuration as a Managed Object Format (MOF) configuration document.

## EXAMPLES

### Example 1: Get all DSC node configurations
```
PS C:\>Get-AzureAutomationDscNodeConfiguration -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17"
```

This command gets metadata on all DSC node configurations in the Automation account named Contoso17.

### Example 2: Get all DSC node configurations for a DSC configuration
```
PS C:\>Get-AzureAutomationDscNodeConfiguration -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -ConfigurationName "MyConfiguration"
```

This command gets metadata on all DSC node configurations in the Automation account named Contoso17 that the DSC configuration named MyConfiguration generated.

### Example 3: Get a DSC node configuration by name
```
PS C:\>Get-AzureAutomationDscNodeConfiguration -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -Name "MyConfiguration.webserver"
```

This command gets metadata on a DSC node configuration with the name MyConfiguration.webserver in the Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account that contains the DSC node configurations for which this cmdlet gets metadata.

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

### -ConfigurationName
Specifies the name of DSC configuration for which this cmdlet gets node configuration metadata.

```yaml
Type: String
Parameter Sets: ByConfigurationName
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the DSC node configuration for which this cmdlet gets metadata.

```yaml
Type: String
Parameter Sets: ByNodeConfigurationName
Aliases: NodeConfigurationName

Required: True
Position: Named
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

### -ResourceGroupName
Specifies the name of a resource group.
This cmdlet gets metadata for DSC node configurations in the resource group that this parameter specifies.

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

### -RollupStatus
Specifies the rollup status of DSC node configurations that this cmdlet gets.
Valid values are: Bad and Good.

```yaml
Type: String
Parameter Sets: ByAll, ByConfigurationName
Aliases: 
Accepted values: Good, Bad

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


