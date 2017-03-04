---
external help file: Microsoft.AzureStack.Commands.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: D1F6C454-B714-463F-8240-FEC4C1265BA0
updated_at: 11/15/2016 9:52 PM
ms.date: 11/15/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Remove-AzureRMGalleryItem.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Remove-AzureRMGalleryItem.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4f706d2c1618dbb78e7ccf2f58b90336813a13f1/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Remove-AzureRMGalleryItem.md
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

# Remove-AzureRMGalleryItem

## SYNOPSIS
Removes the specified gallery item.

## SYNTAX

```
Remove-AzureRMGalleryItem -Name <String> [-SubscriptionId <Guid>] [-AdminUri <Uri>] [-Token <String>]
 [-ApiVersion <String>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [-PipelineVariable <String>]
```

## DESCRIPTION
The **Remove-AzureRMGalleryItem** cmdlet removes the specified gallery item.

## EXAMPLES

### Example 1: Remove a gallery item
```
Remove-AzureRMGalleryItem -Name "Microsoft.SqlDatabase.0.1.0"
```

This command removes the gallery item named Microsoft.SqlDatabase.0.1.0.

## PARAMETERS

### -AdminUri
Specifies the Azure Stack Resource Manager endpoint.
This parameter is not needed when you use the cmdlet against the Azure Stack environment configured against Azure Active Directory.
This parameter will be deprecated in future.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ApiVersion
Specifies the supported API version.
This parameter is optional.
This parameter will be deprecated in future.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.
The acceptable values for this parameter are:
* Continue
* Ignore
* Inquire
* SilentlyContinue
* Stop
* Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa
Accepted values: SilentlyContinue, Stop, Continue, Inquire

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

### -Name
Specifies the name of the Azure Resource Manager gallery item that this cmdlet removes.

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

### -PipelineVariable
Stores the value of the current pipeline element as a variable, for any named command as it flows through the pipeline.

```yaml
Type: String
Parameter Sets: (All)
Aliases: pv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Specifies the service administrator subscription ID.
This parameter is not needed when you use the cmdlet against the Azure Stack environment configured against Azure Active Directory.
This parameter will be deprecated in a future release.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Token
Specifies the authentication token for making the request.
This parameter is not needed when you use the cmdlet against the Azure Stack environment configured against Azure Active Directory.
This parameter will be deprecated in a future release.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Microsoft.Azure.AzureOperationResponse

## NOTES

## RELATED LINKS

[Add-AzureRMGalleryItem](xref:ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Add-AzureRMGalleryItem.md)

[Get-AzureRMGalleryItem](xref:ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Get-AzureRMGalleryItem.md)
