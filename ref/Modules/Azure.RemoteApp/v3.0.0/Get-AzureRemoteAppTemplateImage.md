---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A7AE3270-17A2-46DD-9E0D-7A245BB9876D
updated_at: 1/11/2017 10:09 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppTemplateImage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppTemplateImage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/45f0d6967fa74d25a9f1429acae86d4dfc7d3f01/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppTemplateImage.md
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

# Get-AzureRemoteAppTemplateImage

## SYNOPSIS
Retrieves information about Azure RemoteApp template images.

## SYNTAX

```
Get-AzureRemoteAppTemplateImage [[-ImageName] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRemoteAppTemplateImage** cmdlet retrieves information about Azure RemoteApp template images in Microsoft Azure.
This cmdlet returns an object containing information about a specified template image.
If no template image is specified, it retrieves information about all the template images in the current subscription.

## EXAMPLES

### Example 1: Get a list of all template images
```
PS C:\> Get-AzureRemoteAppTemplateImage
```

This command returns the list of all template images.

### Example 2: Retrieve information about a specified template image
```
PS C:\> Get-AzureRemoteAppTemplateImage -ImageName "ContosoApps"
```

This command retrieves information about the template image named ContosoApps.

## PARAMETERS

### -ImageName
Specifies the name of an Azure RemoteApp template image.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
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

[Get-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppCollection.md)

[Get-AzureRemoteAppStartMenuProgram](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppStartMenuProgram.md)


