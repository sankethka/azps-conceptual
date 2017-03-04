---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C9CA053E-DECE-4A20-A8D1-A4884603C136
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscOnboardingMetaconfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscOnboardingMetaconfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscOnboardingMetaconfig.md
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

# Get-AzureAutomationDscOnboardingMetaconfig

## SYNOPSIS
Creates meta-configuration .mof files to onboard one or more machines to Azure Automation DSC as DSC nodes.

## SYNTAX

```
Get-AzureAutomationDscOnboardingMetaconfig [-OutputFolder <String>] [-ComputerName <String[]>] [-Force]
 [-ResourceGroupName] <String> [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationDscOnboardingMetaconfig** cmdlet creates PowerShell Desired State Configuration (DSC) meta-configuration Managed Object Format (MOF) files.
This cmdlet creates a .mof file for each computer name that you specify.
The cmdlet creates a folder for the .mof files.
You can run the **Set-DscLocalConfigurationManager** cmdlet against this folder to onboard these computers into an Azure Automation account as DSC nodes.

## EXAMPLES

### Example 1: Onboard a set of machines to Azure Automation DSC
```
PS C:\>Get-AzureAutomationDscOnboardingMetaconfig -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -ComputerName "MyServer1", "MyServer2" -OutputFolder C:\Users\PattiFuller\Desktop 
PS C:\> Set-DscLocalConfigurationManager -Path C:\Users\PattiFuller\Desktop\DscMetaConfigs -ComputerName "MyServer1", "MyServer2"
```

This set of commands downloads the DSC metaconfigurations to onboard machines MyServer1 and MyServer2 as DSC nodes in the Automation account named Contoso17, and then performs the onboarding operation.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account.
You can onboard the computers that the *ComputerName* parameter specifies to the account that this parameter specifies.

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

### -ComputerName
Specifies an array of names of computers for which this cmdlet generates .mof files.
If you do not specify this parameter, the cmdlet generates an .mof file for the current computer (localhost).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
Forces the command to run without prompting you for confirmation, and to replace existing .mof files that have the same name.

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

### -OutputFolder
Specifies the name of a folder where this cmdlet stores .mof files.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
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
This cmdlet creates .mof files to onboard computers in the resource group that this parameter specifies.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS


