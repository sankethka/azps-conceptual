---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 77AF3CC6-7C59-4D03-9693-12687DF48644
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v1.6.1/Get-AzureRemoteAppCollection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v1.6.1/Get-AzureRemoteAppCollection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v1.6.1/Get-AzureRemoteAppCollection.md
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
PS C:\>Get-AzureRemoteAppCollection
```

This command returns a list of all Azure RemoteApp collections in the subscription.

### Example 2: Get information about a specified collection
```
PS C:\>Get-AzureRemoteAppCollection ContosoApps
```

This command returns information about the Azure RemoteApp collection named ContosoApps.

### Example 3: Get a list of collections by using a wildcard
```
PS C:\>Get-AzureRemoteAppCollection Finance*
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
ps_azureprofile_description

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

[New-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v1.6.1/New-AzureRemoteAppCollection.md)

[Remove-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v1.6.1/Remove-AzureRemoteAppCollection.md)

[Set-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v1.6.1/Set-AzureRemoteAppCollection.md)

[Update-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v1.6.1/Update-AzureRemoteAppCollection.md)


