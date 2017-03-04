---
external help file: Microsoft.Azure.Commands.ApiManagement.dll-Help.xml
ms.assetid: DBA7AD5F-CC13-417A-B753-F998942530BB
online version: 
schema: 2.0.0
updated_at: 1/11/2017 8:44 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.1.0/Get-AzureRmApiManagement.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.1.0/Get-AzureRmApiManagement.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/6e6a0656340eb7c14dba7902e574fdb3e8917955/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.1.0/Get-AzureRmApiManagement.md
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

# Get-AzureRmApiManagement

## SYNOPSIS
Gets a list or a particular API Management Service description.

## SYNTAX

### All In Subscription (Default)
```
Get-AzureRmApiManagement [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### Specific API Management Service
```
Get-AzureRmApiManagement -ResourceGroupName <String> -Name <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### All In Resource Group
```
Get-AzureRmApiManagement -ResourceGroupName <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagement** cmdlet gets a list of all API Management services under subscription or specified resource group or a particular API Management.

## EXAMPLES

### Example 1: Get all API Management services
```
PS C:\> Get-AzureRmApiManagement
```

This command gets all API Management services within a subscription.

### Example 2: Get all API Management services by a specific name
```
PS C:\> Get-AzureRmApiManagement -ResourceGroupName "ContosoGroup" -Name "ContosoApi"
```

This command gets all API Management service by name.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group under in which this cmdlet gets the API Management service.

```yaml
Type: String
Parameter Sets: Specific API Management Service, All In Resource Group
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of API Management service.

```yaml
Type: String
Parameter Sets: Specific API Management Service
Aliases: 

Required: True
Position: Named
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

[Backup-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v3.1.0/Backup-AzureRmApiManagement.md)

[New-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v3.1.0/New-AzureRmApiManagement.md)

[Remove-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v3.1.0/Remove-AzureRmApiManagement.md)

[Restore-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v3.1.0/Restore-AzureRmApiManagement.md)


