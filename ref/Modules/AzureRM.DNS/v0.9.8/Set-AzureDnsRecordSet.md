---
external help file: Microsoft.Azure.Commands.Dns.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2D574728-9D04-4DEB-9FD4-E27F352A39EF
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v0.9.8/Set-AzureDnsRecordSet.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v0.9.8/Set-AzureDnsRecordSet.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.DNS/v0.9.8/Set-AzureDnsRecordSet.md
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

# Set-AzureDnsRecordSet

## SYNOPSIS
Updates a DNS record set.

## SYNTAX

```
Set-AzureDnsRecordSet -RecordSet <DnsRecordSet> [-Overwrite] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
**The Set-AzureDnsRecordSet** cmdlet updates a **RecordSet** from an offline **RecordSet** object.
If the Etag has changed since the last get, the call will fail unless the *Overwrite* switch is specified.

You can pass a **RecordSet** as a parameter or by using the pipeline operator.

## EXAMPLES

### Example 1: Update a record set
```
PS C:\>$RecordSet = Get-AzureDnsRecordSet -ResourceGroupName "MyResourceGroup" -ZoneName "myzone.com" -Name "www" -RecordType A
PS C:\> $RecordSet = $RecordSet | Add-AzureDnsRecordConfig -Ipv4Address "172.16.0.0"
PS C:\> $RecordSet = $RecordSet | Add-AzureDnsRecordConfig -Ipv4Address "172.31.255.255"
PS C:\> $RecordSet | Set-AzureDnsRecordSet
```

The first command uses the **Get-AzureDnsRecordset** cmdlet to get the specified record set, and then stores it in the $RecordSet variable.

The second command uses the pipeline operator to pass $RecordSet to the **Add-AzureDnsRecordConfig** cmdlet to add an IP address as an A record, and then stores it in $RecordSet.

The third command uses the pipeline operator to pass $RecordSet to the **Add-AzureDnsRecordConfig** cmdlet to add another IP address as an A record, and then stores it in $RecordSet.

The final command uses the pipeline operator to pass $RecordSet to the **Set-AzureDnsRecordSet** cmdlet to propagate the update.

### Example 2: Update an SOA record
```
PS C:\>$RecordSet = Get-AzureDnsRecordSet -Name "@" -RecordType SOA -Zone $Zone
PS C:\> $RecordSet.Records[0].Email = "bob@test.com"
PS C:\> Set-AzureDnsRecordSet -RecordSet $RecordSet
```

The first command uses the **Get-AzureDnsRecordset** cmdlet to get the specified record set, and then stores it in the $RecordSet variable.

The second command updates the specified SOA record in $RecordSet.

The final command uses the **Set-AzureDnsRecordSet** cmdlet to propagate the update in $RecordSet.

## PARAMETERS

### -Overwrite
Indicates that this cmdlet ignores the Etag when deleting the record set, and that the record set is deleted even if it has changed since the last Get.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

### -RecordSet
Specifies the **RecordSet** to update.

```yaml
Type: DnsRecordSet
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Dns.DnsRecordSet
You can pass a **RecordSet** object to this cmdlet.

## OUTPUTS

### Microsoft.Azure.Commands.Dns.DnsRecordSet
This cmdlet returns an object that represents the updated **RecordSet**.

## NOTES

## RELATED LINKS

[Get-AzureDnsRecordSet](xref:ResourceManager/AzureRM.DNS/v0.9.8/Get-AzureDnsRecordSet.md)

[New-AzureDnsRecordSet](xref:ResourceManager/AzureRM.DNS/v0.9.8/New-AzureDnsRecordSet.md)

[Remove-AzureDnsRecordSet](xref:ResourceManager/AzureRM.DNS/v0.9.8/Remove-AzureDnsRecordSet.md)


