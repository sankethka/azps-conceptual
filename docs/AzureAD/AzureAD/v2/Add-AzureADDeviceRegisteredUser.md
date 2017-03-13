---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: 2CFAF4EB-D639-4B11-8A1F-6D011BBE4ACA
online version: 
schema: 2.0.0
updated_at: 12/5/2016 8:34 PM
ms.date: 12/5/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Add-AzureADDeviceRegisteredUser.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Add-AzureADDeviceRegisteredUser.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/a3f4eb41072cf1506c8f82aa100e942b0830fc23/Azure%20AD%20Cmdlets/AzureAD/v2/Add-AzureADDeviceRegisteredUser.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Add-AzureADDeviceRegisteredUser

## SYNOPSIS
Adds a registered user for a device.

## SYNTAX

```
Add-AzureADDeviceRegisteredUser -ObjectId <String> -RefObjectId <String> [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureADDeviceRegisteredUser** cmdlet adds a registered user for an Azure Active Directory device.

## EXAMPLES

### Example 1: Add a user as a registered user
```
PS C:\> $User = Get-AzureADUser -Top 1
PS C:\> $Device = Get-AzureADDevice -Top 1
PS C:\> Add-AzureADDeviceRegisteredUser -ObjectId $Device.ObjectId -RefObjectId $User.ObjectId
```

The first command gets a user by using the [Get-AzureADUser](./Get-AzureADUser.md) cmdlet, and then stores it in the $User variable. 

The second command gets a device by using the [Get-AzureADDevice](./Get-AzureADDevice.md) cmdlet, and then stores it in the $Device variable.

The final command adds the user in $User as the registered user for the device in $Device. 
Both parameters use the **ObjectId** property of specified object. 


## PARAMETERS

### -ObjectId
```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -RefObjectId
```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureADDevice](xref:AzureAD/v2/Get-AzureADDevice.md)

[Get-AzureADDeviceRegisteredUser](xref:AzureAD/v2/Get-AzureADDeviceRegisteredUser.md)

[Get-AzureADUser](xref:AzureAD/v2/Get-AzureADUser.md)

[Remove-AzureADDeviceRegisteredUser](xref:AzureAD/v2/Remove-AzureADDeviceRegisteredUser.md)
