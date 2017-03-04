---
external help file: Microsoft.Azure.Commands.Dns.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 824C7E35-0BE8-4761-9D19-EE8747B7663A
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v0.9.8/Get-AzureDnsZone.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v0.9.8/Get-AzureDnsZone.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v0.9.8/Get-AzureDnsZone.md
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

# Get-AzureDnsZone

## SYNOPSIS
Gets a DNS zone.

## SYNTAX

```
Get-AzureDnsZone [-Name <String>] -ResourceGroupName <String> [-EndsWith <String>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureDnsZone** cmdlet gets a Domain Name System (DNS) zone from the specified resource group.
If you specify the *Name* parameter, a single **DnsZone** object is returned.
If you do not specify the *Name* parameter, an array containing all of the zones in the specified resource group is returned.
You can use the **DnsZone** object to update the zone, for example you can add **RecordSet** objects to it.

## EXAMPLES

### Example 1: Get a zone
```
PS C:\>$Zone = Get-AzureDnsZone -ResourceGroupName "MyResourceGroup" -Name "myzone.com"
```

This command gets the zone named myzone.com from the specified resource group, and then stores it in the $Zone variable.

### Example 2: Get all of the zones in a resource group
```
PS C:\>$Zone = Get-AzureDnsZone -ResourceGroupName "MyResourceGroup"
```

This command gets all of the zones in the specified resource group, and then stores it in the $Zone variable.

## PARAMETERS

### -EndsWith
Specifies a suffix to use as a filter when you get multiple zones.

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

### -Name
Specifies the name of the DNS zone to get.
If you do not specify the *Name* parameter, all zones in the specified resource group are returned.

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

### -Profile
Specifies an Azure profile.

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

### -ResourceGroupName
Specifies the resource group that contains the zone to get.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
You cannot pipe input to this cmdlet.

## OUTPUTS

### Microsoft.Azure.Commands.Dns.DnsZone
This cmdlet returns an object that represents the DNS zone.
If the zone name is not specified, an array of zone objects is returned.

## NOTES

## RELATED LINKS

[New-AzureDnsZone](xref:ResourceManager/AzureRM.DNS/v0.9.8/New-AzureDnsZone.md)

[Remove-AzureDnsZone](xref:ResourceManager/AzureRM.DNS/v0.9.8/Remove-AzureDnsZone.md)

[Set-AzureDnsZone](xref:ResourceManager/AzureRM.DNS/v0.9.8/Set-AzureDnsZone.md)


