---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 5C0AF133-1D45-4F4E-A22E-0C53DA4B8127
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollectionUsageSummary.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollectionUsageSummary.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollectionUsageSummary.md
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

# Get-AzureRemoteAppCollectionUsageSummary

## SYNOPSIS
Retrieves a usage summary for a RemoteApp collection.

## SYNTAX

```
Get-AzureRemoteAppCollectionUsageSummary [-CollectionName] <String> [[-UsageMonth] <String>]
 [[-UsageYear] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRemoteAppCollectionUsageSummary** cmdlet retrieves a usage summary for an Azure RemoteApp collection.

## EXAMPLES

### Example 1: Get a usage summary
```
PS C:\> Get-AzureRemoteAppCollectionUsageSummary -CollectionName Contoso -UsageMonth 12 -UsageYear 2014
```

This command gets a usage summary for the month of December in the year 2014, for a collection named Contoso.

## PARAMETERS

### -CollectionName
Specifies the name of the RemoteApp collection.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: True
Position: 0
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

### -UsageMonth
Specifies a two digit number for the month for which to get a usage summary.
If this parameter is not specified, this cmdlet provides usage for the current month.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UsageYear
Specifies the four-digit year for which to get a usage summary.
If this parameter is not specified, this cmdlet provides a usage summary for the current year will be used.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
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

[Get-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollection.md)

[Get-AzureRemoteAppCollectionUsageDetails](xref:ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollectionUsageDetails.md)


