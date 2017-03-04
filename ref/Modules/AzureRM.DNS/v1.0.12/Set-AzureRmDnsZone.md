---
external help file: Microsoft.Azure.Commands.Dns.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: AA0EA073-59B6-4441-B866-C7505D4ABD05
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v1.0.12/Set-AzureRmDnsZone.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v1.0.12/Set-AzureRmDnsZone.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v1.0.12/Set-AzureRmDnsZone.md
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

# Set-AzureRmDnsZone

## SYNOPSIS
Updates the properties of a DNS zone.

## SYNTAX

### Fields
```
Set-AzureRmDnsZone -Name <String> -ResourceGroupName <String> [-Tag <Hashtable[]>] [<CommonParameters>]
```

### Object
```
Set-AzureRmDnsZone -Zone <DnsZone> [-Overwrite] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmDnsZone** cmdlet updates the specified DNS zone in the Azure DNS service.
This cmdlet does not update the record sets in the zone.

You can pass a **DnsZone** object as a parameter or by using the pipeline operator, or alternatively you can specify the *ZoneName* and *ResourceGroupName* parameters.

You can use the *Confirm* parameter and $ConfirmPreference wps_2 variable to control whether the cmdlet prompts you for confirmation.

When passing a DNS zone as an object (using the Zone object or via the pipeline), it is not updated if it has been changed in Azure DNS since the local DnsZone object was retrieved.
This provides protection for concurrent changes.
You can suppress this behavior with the *Overwrite* parameter, which updates the zone regardless of concurrent changes.

## EXAMPLES

### Example 1: Update a DNS zone
```
PS C:\>$Zone = Get-AzureRmDnsZone -Name "myzone.com" -ResourceGroupName "MyResourceGroup"
PS C:\> $Zone.Tags = @(@{"Name"="Dept"; "Value"="Electrical"})
PS C:\> Set-AzureRmDnsZone -Zone $Zone
```

The first command gets the zone named myzone.com from the specified resource group, and then stores it in the $Zone variable.

The second command updates the tags for $Zone.

The final command commits the change.

### Example 2: Update tags for a zone
```
PS C:\>Set-AzureRmDNSZone -ResourceGroupName "MyResourceGroup" -Name "myzone.com" -Tag @(@{"Name"="Dept"; "Value"="Electrical"})
```

This command updates the tags for the zone named myzone.com without first explicitly getting the zone.

## PARAMETERS

### -Name
Specifies the name of the DNS zone to update.

```yaml
Type: String
Parameter Sets: Fields
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Overwrite
When passing a DNS zone as an object (using the Zone object or via the pipeline), it is not updated if it has been changed in Azure DNS since the local DnsZone object was retrieved.
This provides protection for concurrent changes.
You can suppress this behavior with the *Overwrite* parameter, which updates the zone regardless of concurrent changes.

```yaml
Type: SwitchParameter
Parameter Sets: Object
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that contains the zone to update.
You must also specify the ZoneName parameter.

Alternatively, you can specify the zone using a DnsZone object with the *Zone* parameter or the pipeline.

```yaml
Type: String
Parameter Sets: Fields
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Zone
Specifies the DNS zone to update.

Alternatively, you can specify the zone using the *ZoneName* and *ResourceGroupName* parameters.

```yaml
Type: DnsZone
Parameter Sets: Object
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Tag
Specifies an array of tags to associate with the DNS zone.
Tags are name-value pairs that are represented as hashtables, for instance, @(@{"Name"="dept"; "Value"="shopping"}, @{"Name"="env"; "Value"="production"})

```yaml
Type: Hashtable[]
Parameter Sets: Fields
Aliases: Tags

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Dns.DnsZone
You can pipe a DnsZone object to this cmdlet.

## OUTPUTS

### Microsoft.Azure.Commands.Dns.DnsZone
This cmdlet returns a DnsZone object that represents the updated DNS zone with a new Etag.

## NOTES
* You can use the *Confirm* parameter to control whether this cmdlet prompts you for confirmation. By default, the cmdlet prompts you for confirmation if the $ConfirmPreference wps_2 variable has a value of Medium or lower.

  If you specify *Confirm* or *Confirm:$True*, this cmdlet prompts you for confirmation before it runs.
If you specify *Confirm:$False*, the cmdlet does not prompt you for confirmation.

## RELATED LINKS

[Get-AzureRmDnsZone](xref:ResourceManager/AzureRM.DNS/v1.0.12/Get-AzureRmDnsZone.md)

[New-AzureRmDnsZone](xref:ResourceManager/AzureRM.DNS/v1.0.12/New-AzureRmDnsZone.md)

[Remove-AzureRmDnsZone](xref:ResourceManager/AzureRM.DNS/v1.0.12/Remove-AzureRmDnsZone.md)


