---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
ms.assetid: EFBC8DCD-00CC-4BBF-9383-EA15376535F3
online version: 
schema: 2.0.0
updated_at: 1/5/2017 11:58 PM
ms.date: 1/5/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Update-AzureWebsiteRepository.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Update-AzureWebsiteRepository.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/708031d6bfe230ef535b9f1da2a6bf5f01dca5a2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Update-AzureWebsiteRepository.md
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

# Update-AzureWebsiteRepository

## SYNOPSIS
Updates the remote repositories of a local git repository for all the slots.

## SYNTAX

```
Update-AzureWebsiteRepository [[-Name] <String>] -PublishingUsername <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Update-AzureWebsiteRepository** cmdlet updates the remote repositories of a local git repository for all the slots.

## EXAMPLES

### Example 1: Update Website Remote Repositories
```
PS C:\> Update-AzureWebsiteRepository -Name MyWebsite
```

Updates the remote repositories of a local git repository for all the slots for website MyWebsite.

## PARAMETERS

### -Name
The name of the website.

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

### -PublishingUsername
The username you have specified in the Microsoft Azure Portal for Git deployment.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

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
Type: AzureSMProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.1.0/Get-AzureWebsite.md)

[New-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.1.0/New-AzureWebsite.md)

[Start-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.1.0/Start-AzureWebsite.md)

[Stop-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.1.0/Stop-AzureWebsite.md)


