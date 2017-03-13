---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: B6BE96C3-7409-4AE2-AF70-823BEF4BFC62
online version: 
schema: 2.0.0
updated_at: 12/5/2016 8:34 PM
ms.date: 12/5/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Remove-AzureADDeviceRegisteredOwner.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Remove-AzureADDeviceRegisteredOwner.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/a3f4eb41072cf1506c8f82aa100e942b0830fc23/Azure%20AD%20Cmdlets/AzureAD/v2/Remove-AzureADDeviceRegisteredOwner.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Remove-AzureADDeviceRegisteredOwner

## SYNOPSIS
Removes the registered owner of a device.

## SYNTAX

```
Remove-AzureADDeviceRegisteredOwner -ObjectId <String> -OwnerId <String> [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureADDeviceRegisteredOwner** cmdlet removes the registered owner of a device in Azure Active Directory (AD).

## EXAMPLES

### Example 1: Remove an owner from a device
```
PS C:\> $Device = Get-AzureADDevice -Top 1
PS C:\> $Owner = Get-AzureADDeviceRegisteredOwner -ObjectId $Device.ObjectId
PS C:\> Remove-AzureADDeviceRegisteredOwner -ObjectId $Device.ObjectId -OwnerId $Owner.ObjectId
```

The first command gets a device by using the [Get-AzureADDevice](./Get-AzureADDevice.md) cmdlet, and then stores it in the $Device variable.

The second command gets the registered owner for the device in $Device by using the [Get-AzureADDeviceRegisteredOwner](./Get-AzureADDeviceRegisteredOwner.md) cmdlet.
The command stores it in the $Owner variable.

The final command removes the owner in $Owner from the device in $Device.

## PARAMETERS

### -ObjectId
Specifies an object ID.
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

### -OwnerId
Specifies an owner ID.
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

[Add-AzureADDeviceRegisteredOwner](xref:AzureAD/v2/Add-AzureADDeviceRegisteredOwner.md)

[Get-AzureADDevice](xref:AzureAD/v2/Get-AzureADDevice.md)

[Get-AzureADDeviceRegisteredOwner](xref:AzureAD/v2/Get-AzureADDeviceRegisteredOwner.md)
