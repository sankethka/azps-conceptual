---
external help file: Microsoft.AzureStack.Commands.StorageAdmin.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 384C17E4-F79C-443A-B450-0D0D61DC43AD
updated_at: 11/15/2016 8:02 AM
ms.date: 11/15/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSNodeMetricDefinition.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSNodeMetricDefinition.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/16dcbb293b24fa241864048736125047ff62e2ea/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSNodeMetricDefinition.md
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

# Get-ACSNodeMetricDefinition

## SYNOPSIS
Gets metric definitions for a storage node.

## SYNTAX

```
Get-ACSNodeMetricDefinition [-FarmName] <String> [-NodeName] <String> [-MetricNames <String[]>]
 [-DetailedOutput] [[-SubscriptionId] <String>] [[-Token] <String>] [[-AdminUri] <Uri>]
 [-ResourceGroupName] <String> [-SkipCertificateValidation] [<CommonParameters>]
```

## DESCRIPTION
The **Get-ACSNodeMetricDefinition** cmdlet returns metric definitions for a storage node.
Metrics are usage information for a storage service component.
For example, you can retrieve information about the total number of requests made to a storage service component as well as information about the percentage of requests that were successfully filled.

Metric definitions provide you with information about the metrics available to you, including such things as the metric name, the metric data type, and a brief definition of what the metric actually does.
For example, the definition for the TotalRequests metric tells you that the metric represents the total number of requests made to a storage service component.

**Get-ACSNodeMetricDefinition** only returns information about the metrics available for use.
To return the actual use the Get-ACSNodeMetric cmdlet.

## EXAMPLES

### Example 1: Get storage node metric definitions
```
PS C:\> Get-ACSNodeMetricDefinition -FarmName "ContosoFarm" -NodeName "ContosoNode01" -ResourceGroupName "ContosoResourceGroup"
```

This command returns metric definitions for the storage node ContosoNode01.

## PARAMETERS

### -FarmName
Specifies the name of the storage farm associated with the target node.
For example:

`-FarmName "ContosoFarm01"`

A storage farm is a collection of storage resources that provides load balancing and redundancy.

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

### -NodeName
Specifies the name of the storage node whose metric definitions are being returned.
For example:

`-NodeName "ContosoNode01"`

A node is a single storage resource within a storage farm.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -MetricNames
Specifies the names of the metric definitions to be returned.
For example:

`-MetricNames "TotalRequests"`

To specify multiple metrics, separate the metric names by using commas:

`-MetricNames "TotalRequests", "PercentSuccess"`

If this parameter is not included definitions are returned for all the available metrics.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionId
Specifies the Azure subscription ID.
For example:

`-SubscriptionID "81c87063-04a3-4abf-8e4c-736569bc1f60"`

If the Azure environment has already been configured by using the **Set-AzureRmEnvironment** cmdlet then you do not need to use this parameter.

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
Specifies the authentication token for the service administrator.
This parameter is not required if you have configured your environment by using the **Set-AzureRmEnvironment** cmdlet.

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
Specifies the name of the resource group associated with the target storage node.
For example:

`-ResourceGroupName "ContosoResourceGroup"`

Resource groups categorize items to help simplify inventory management and overall Azure administration.

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
Indicates that the command proceeds without validating the Secure Sockets Layer (SSL) certificate.
By default, storage service commands require certification validation.

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

### -DetailedOutput
Indicates that complete information, including all the available metadata, is returned for each metric.
By default, **Get-ACSNodeMetricDefinition** returns only a partial definition for each metric.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-ACSNode](xref:ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSNode.md)

[Get-ACSNodeMetric](xref:ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSNodeMetric.md)


