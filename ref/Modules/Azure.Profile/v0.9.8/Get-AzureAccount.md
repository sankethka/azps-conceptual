---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 6E8A4327-CBCF-45BA-99E4-0DF0DE18C289
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Get-AzureAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Get-AzureAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Get-AzureAccount.md
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

# Get-AzureAccount

## SYNOPSIS
Gets Azure accounts that are available to Azure PowerShell.

## SYNTAX

```
Get-AzureAccount [[-Name] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAccount** cmdlet gets the Azure accounts that are available to Windows PowerShell.
To make your accounts available to Windows PowerShell, use the **Add-AzureAccount** or **Import-PublishSettingsFile** cmdlets.

## EXAMPLES

### Example 1: Get all accounts
```
PS C:\>Get-AzureAccount
Name                         ActiveDirectories
----                         -----------------
contosoadmin@outlook.com     {{ ActiveDirectoryTenantId = abcde5cd-bcc3-441a-bd86-e6a...
contosotest1@outlook.com     {{ ActiveDirectoryTenantId = aaeabcde-386c-4466-bf70-794...
```

This command gets all accounts associated with the specified user.

### Example 2: Get an account by name
```
PS C:\>Get-AzureAccount -Name contosoadmin@outlook.com
Name                         ActiveDirectories
----                         -----------------
contosoadmin@outlook.com     {{ ActiveDirectoryTenantId = abcde5cd-bcc3-441a-bd86-e6a...
```

This command gets the ContosoAdmin account.

## PARAMETERS

### -Name
Gets only the specified account.
The default is all accounts that are available to Windows PowerShell.
Enter the account name.
The **Name** value is case-sensitive.
Wildcards are not permitted.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile

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

### None
You cannot pipe input to this cmdlet.

## OUTPUTS

### None
This cmdlet does not return any output.

## NOTES

## RELATED LINKS

[Add-AzureAccount](xref:ServiceManagement/Azure.Profile/v0.9.8/Add-AzureAccount.md)

[Get-AzurePublishSettingsFile](xref:ServiceManagement/Azure.Profile/v0.9.8/Get-AzurePublishSettingsFile.md)

[Import-AzurePublishSettingsFile](xref:ServiceManagement/Azure.Profile/v0.9.8/Import-AzurePublishSettingsFile.md)

[Remove-AzureAccount](xref:ServiceManagement/Azure.Profile/v0.9.8/Remove-AzureAccount.md)


