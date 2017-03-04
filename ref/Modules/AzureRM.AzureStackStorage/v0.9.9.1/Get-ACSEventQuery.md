---
external help file: Microsoft.AzureStack.Commands.StorageAdmin.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 64577815-5A33-4832-B34C-4FB6BED0F5C1
updated_at: 11/15/2016 8:02 AM
ms.date: 11/15/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSEventQuery.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSEventQuery.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/16dcbb293b24fa241864048736125047ff62e2ea/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSEventQuery.md
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

# Get-ACSEventQuery

## SYNOPSIS
Gets an ACS query object.

## SYNTAX

```
Get-ACSEventQuery [-FarmName] <String> [-StartTime] <DateTime> [-EndTime] <DateTime> [-NodeName <String>]
 [[-ResourceUri] <String>] [[-ProviderGuid] <Guid>] [[-EventId] <Int32[]>] [[-SubscriptionId] <String>]
 [[-Token] <String>] [[-AdminUri] <Uri>] [-ResourceGroupName] <String> [-SkipCertificateValidation]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-ACSEventQuery** cmdlet gets an Azure Consistent Storage system (ACS) query object.
The **ACSEventQuery** object can be used to query events from the ACS system.

## EXAMPLES

### Example 1: Get an ACS query object
```
PS C:\>$EndTime = Get-Date
PS C:\> $StartTime=$EndTime.addminutes(-10)
PS C:\> $Query = Get-ACSEventQuery -FarmId $Farm.Name -Token "Token01" -SubscriptionId $SubscriptID -AdminUri $AdminUri -ResourceGroupName $ResourceGroup -StartTime $StartTime -EndTime $EndTime
```

This command gets an ACS query object and stores the result in the variable named $Query.

## PARAMETERS

### -FarmName
Specifies the name of the ACS farm.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StartTime
Specifies the start time of a time range.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndTime
Specifies the end time of a time range.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases: 

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceUri
Specifies the path, as a URI, to the resource file.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProviderGuid

```yaml
Type: Guid
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EventId

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Specifies the service administrator subscription ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Token
Specifies the service administrator token.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AdminUri
Specifies the location of the Resource Manager endpoint.
If you configured your environment by using the Set-AzureRMEnvironment cmdlet, you do not have to specify this parameter.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that this cmdlet gets the ACS event query object from.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SkipCertificateValidation
Indicates that this cmdlet skips certificate validation.

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

### -NodeName
Specifies the name of the node.

```yaml
Type: String
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

### Microsoft.AzureStack.Commands.StorageAdmin.FarmResponse,
Output from Get-ACSFarm can be piped to this cmdlet.

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-ACSEvent](xref:ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSEvent.md)

[Get-ACSFarm](xref:ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSFarm.md)


