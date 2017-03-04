---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E5AA21F9-FDC7-4A50-ADCA-8589A37161DC
updated_at: 1/11/2017 10:09 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppCollection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppCollection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/45f0d6967fa74d25a9f1429acae86d4dfc7d3f01/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppCollection.md
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

# Get-AzureRemoteAppCollection

## SYNOPSIS
Retrieves information about an Azure RemoteApp collection.

## SYNTAX

```
Get-AzureRemoteAppCollection [[-CollectionName] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRemoteAppCollection** cmdlet retrieves information about Azure RemoteApp collections in Microsoft Azure.
It returns an object with information on a specific collection, or if no collection is specified, for all the collections in the current subscription.

## EXAMPLES

### Example 1: Get a list of all collections
```
PS C:\> Get-AzureRemoteAppCollection
```

This command returns a list of all Azure RemoteApp collections in the subscription.

### Example 2: Get information about a specified collection
```
PS C:\> Get-AzureRemoteAppCollection ContosoApps
```

This command returns information about the Azure RemoteApp collection named ContosoApps.

### Example 3: Get a list of collections by using a wildcard
```
PS C:\> Get-AzureRemoteAppCollection Finance*
```

This command returns a list of all Azure RemoteApp collections matching Finance*.

## PARAMETERS

### -CollectionName
Specifies the name of the Azure RemoteApp collection.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: True
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/New-AzureRemoteAppCollection.md)

[Remove-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Remove-AzureRemoteAppCollection.md)

[Set-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Set-AzureRemoteAppCollection.md)

[Update-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Update-AzureRemoteAppCollection.md)


