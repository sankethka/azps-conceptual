---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 21DA37EC-8A96-4997-9368-7705D0864BDE
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureVNetSite.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureVNetSite.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureVNetSite.md
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

# Get-AzureVNetSite

## SYNOPSIS
Gets a list object with information about Azure virtual networks.

## SYNTAX

```
Get-AzureVNetSite [[-VNetName] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVNetSite** cmdlet gets a list object with information about Azurevirtual networks for the current subscription.
If you specify a virtual network name, only information for that virtual network is returned.

## EXAMPLES

### Example 1: Get information about all virtual networks in the current subscription
```
PS C:\>Get-AzureVNetSite
```

This command gets information about all the virtual networks in the current subscription.

### Example 2: Get information about a specific virtual network in the current subscription
```
PS C:\>Get-AzureVNetSite -VNetName "MyProductionNetwork"
```

This command retrieves information on the MyProductionNetwork virtual network only.

## PARAMETERS

### -VNetName
Specifies a virtual network name to return information about.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: False
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

[Get-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVNetConfig.md)

[Remove-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureVNetConfig.md)

[Set-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v0.9.8/Set-AzureVNetConfig.md)


