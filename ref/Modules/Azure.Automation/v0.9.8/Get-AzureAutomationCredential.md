---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 46CC90A6-F6BD-4E3D-9332-B9C162784F0A
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v0.9.8/Get-AzureAutomationCredential.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v0.9.8/Get-AzureAutomationCredential.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v0.9.8/Get-AzureAutomationCredential.md
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

# Get-AzureAutomationCredential

## SYNOPSIS
Gets an Azure Automation credential.

## SYNTAX

### ByAll (Default)
```
Get-AzureAutomationCredential [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByName
```
Get-AzureAutomationCredential [-Name] <String> [-AutomationAccountName] <String> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationCredential** cmdlet gets one or more Microsoft Azure Automation credentials.
By default, all credentials are returned.
To get a specific credential, specify its name.

## EXAMPLES

### Example 1: Get all credentials
```
PS C:\> Get-AzureAutomationCredential -AutomationAccountName "Contoso17"
```

This command gets all credentials in the Automation account named Contoso17.

### Example 2: Get a credential
```
PS C:\> Get-AzureAutomationCredential -AutomationAccountName "Contoso17" -Name "MyCredential"
```

This command gets the credential named MyCredential.

## PARAMETERS

### -AutomationAccountName
Specifies the name of the automation account with the credential to retrieve.

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

### -Name
Specifies the name of a credential to retrieve.

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

### -Profile
In-memory profile.

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

### Microsoft.Azure.Commands.Automation.Model.CredentialInfo

## NOTES

## RELATED LINKS

[New-AzureAutomationCredential](xref:ServiceManagement/Azure.Automation/v0.9.8/New-AzureAutomationCredential.md)

[Set-AzureAutomationCredential](xref:ServiceManagement/Azure.Automation/v0.9.8/Set-AzureAutomationCredential.md)

[Remove-AzureAutomationCredential](xref:ServiceManagement/Azure.Automation/v0.9.8/Remove-AzureAutomationCredential.md)


