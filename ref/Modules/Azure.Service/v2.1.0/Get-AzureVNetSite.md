---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 98834DB6-4D73-4067-B71B-9F7FF187B5A1
updated_at: 1/14/2017 6:46 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/Get-AzureVNetSite.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/Get-AzureVNetSite.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/6555eb8cb2408f85e337832ad5b9d0adb06ce475/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/Get-AzureVNetSite.md
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
Get-AzureVNetSite [[-VNetName] <String>] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVNetSite** cmdlet gets a list object with information about Azurevirtual networks for the current subscription.
If you specify a virtual network name, only information for that virtual network is returned.

## EXAMPLES

### Example 1: Get information about all virtual networks in the current subscription
```
PS C:\> Get-AzureVNetSite
```

This command gets information about all the virtual networks in the current subscription.

### Example 2: Get information about a specific virtual network in the current subscription
```
PS C:\> Get-AzureVNetSite -VNetName "MyProductionNetwork"
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
Type: AzureSMProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v2.1.0/Get-AzureVNetConfig.md)

[Remove-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v2.1.0/Remove-AzureVNetConfig.md)

[Set-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v2.1.0/Set-AzureVNetConfig.md)


