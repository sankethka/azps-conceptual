---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: CBBD4415-9880-4076-8FF2-963AD1EC588C
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v1.6.1/Rename-AzureRemoteAppTemplateImage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v1.6.1/Rename-AzureRemoteAppTemplateImage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v1.6.1/Rename-AzureRemoteAppTemplateImage.md
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

# Rename-AzureRemoteAppTemplateImage

## SYNOPSIS
Renames an Azure RemoteApp template image.

## SYNTAX

```
Rename-AzureRemoteAppTemplateImage [-ImageName] <String> [-NewName] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Rename-AzureRemoteAppTemplateImage** cmdlet renames an Azure RemoteApp template image.

## EXAMPLES

### Example 1: Rename a template image
```
PS C:\>Rename-AzureRemoteAppTemplateImage -ImageName "ContosoApps" -NewName "ContosoFinanceApps"
```

This command renames the Azure RemoteApp template image named ContosoApps to ContosoFinanceApps.

## PARAMETERS

### -ImageName
Specifies the name of an Azure RemoteApp template image to rename.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -NewName
Specifies a new name for an Azure RemoteApp template image.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
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

[Get-AzureRemoteAppTemplateImage](xref:ServiceManagement/Azure.RemoteApp/v1.6.1/Get-AzureRemoteAppTemplateImage.md)

[New-AzureRemoteAppTemplateImage](xref:ServiceManagement/Azure.RemoteApp/v1.6.1/New-AzureRemoteAppTemplateImage.md)

[Remove-AzureRemoteAppTemplateImage](xref:ServiceManagement/Azure.RemoteApp/v1.6.1/Remove-AzureRemoteAppTemplateImage.md)


