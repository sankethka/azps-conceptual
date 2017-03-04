---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C9EE0B8C-96EB-4F1A-84CF-5F7056167AEB
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v0.9.8/Get-AzureRemoteAppCollection.md
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
Get-AzureRemoteAppCollection [[-CollectionName] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRemoteAppCollection** cmdlet retrieves information about RemoteApp collections in Microsoft Azure.
It returns an object with information on a specific collection, or if no collection is specified, for all the collections in the current subscription.

## EXAMPLES

### Example 1: Get a list of all RemoteApp collections
```
PS C:\>Get-AzureRemoteAppCollection
```

This command returns a list of all RemoteApp collections in the subscription.

### Example 2: Get information about a specified RemoteApp collection
```
PS C:\>Get-AzureRemoteAppCollection ContosoApps
```

This command returns information about the RemoteApp collection named ContosoApps.

### Example 3: Get a list of Remote App collections by using a wildcard
```
PS C:\>Get-AzureRemoteAppCollection Finance*
```

This command returns a list of all collections matching Finance*.

## PARAMETERS

### -CollectionName
Specifies the name of the RemoteApp collection.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: False
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v0.9.8/New-AzureRemoteAppCollection.md)

[Remove-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v0.9.8/Remove-AzureRemoteAppCollection.md)

[Set-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v0.9.8/Set-AzureRemoteAppCollection.md)

[Update-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v0.9.8/Update-AzureRemoteAppCollection.md)


