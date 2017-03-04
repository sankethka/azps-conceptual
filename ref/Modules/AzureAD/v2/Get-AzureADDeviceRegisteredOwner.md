---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: F2D051A2-8915-459D-8083-2D5800C53A86
online version: 
schema: 2.0.0
updated_at: 2/4/2017 12:05 AM
ms.date: 2/4/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDeviceRegisteredOwner.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDeviceRegisteredOwner.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/3c958c260fe07ce8f34599794f089c4b3c1b8115/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDeviceRegisteredOwner.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-AzureADDeviceRegisteredOwner

## SYNOPSIS
Gets the registered owner of a device.

## SYNTAX

```
Get-AzureADDeviceRegisteredOwner -ObjectId <String> [-All <Boolean>] [-Top <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureADDeviceRegisteredOwner** cmdlet gets the registered owner of a device in Azure Active Directory.

## EXAMPLES

### Example 1: Retrieve the registered owner of a device
```
PS C:\> $DevId = (Get-AzureADDevice -Top 1).ObjectId
PS C:\> Get-AzureADDeviceRegisteredOwner -ObjectId $DevId
```

The first command gets the object ID of a device by using the [Get-AzureADDevice](./Get-AzureADDevice.md) cmdlet, and then stores it in the $DevId variable.  

The second command gets the registered owner of the device in $DevId.

## PARAMETERS

### -All
If true, return all registered owners. If false, return the number of objects specified by the Top parameter

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ObjectId
Specifies the ID of an object.
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

### -Top
```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
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

[Remove-AzureADDeviceRegisteredOwner](xref:AzureAD/v2/Remove-AzureADDeviceRegisteredOwner.md)
