---
external help file: Microsoft.WindowsAzure.Commands.HDInsight.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 64C63280-4A3D-476D-AADC-68174EA4C023
updated_at: 1/12/2017 5:02 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.HDInsight/v3.0.0/Revoke-AzureHDInsightHttpServicesAccess.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.HDInsight/v3.0.0/Revoke-AzureHDInsightHttpServicesAccess.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f45f2181ae36eaa69f472d0ddef24cb39587757b/azureps-cmdlets-docs/ServiceManagement/Azure.HDInsight/v3.0.0/Revoke-AzureHDInsightHttpServicesAccess.md
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

# Revoke-AzureHDInsightHttpServicesAccess

## SYNOPSIS
Disables HTTP access to a cluster.

## SYNTAX

```
Revoke-AzureHDInsightHttpServicesAccess [[-Certificate] <X509Certificate2>] [[-HostedService] <String>]
 [-IgnoreSslErrors <Boolean>] [[-Endpoint] <Uri>] [-Location] <String> [-Name] <String>
 [[-Subscription] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
This version of Azure PowerShell HDInsight is deprecated.
These cmdlets will be removed by January 1, 2017.
Please use the newer version of Azure PowerShell HDInsight.

For information about how to use the new HDInsight to create a cluster, see [Create Linux-based clusters in HDInsight using Azure PowerShell](https://azure.microsoft.com/en-us/documentation/articles/hdinsight-hadoop-create-linux-clusters-azure-powershell/) (https://azure.microsoft.com/en-us/documentation/articles/hdinsight-hadoop-create-linux-clusters-azure-powershell/).
For information about how to submit jobs by using Azure PowerShell and other approaches, see [Submit Hadoop jobs in HDInsight](https://azure.microsoft.com/en-us/documentation/articles/hdinsight-submit-hadoop-jobs-programmatically/) (https://azure.microsoft.com/en-us/documentation/articles/hdinsight-submit-hadoop-jobs-programmatically/).
For reference information about Azure PowerShell HDInsight, see [Azure HDInsight Cmdlets](https://msdn.microsoft.com/en-us/library/mt438705.aspx) (https://msdn.microsoft.com/en-us/library/mt438705.aspx).

The **Revoke-AzureHDInsightHttpServicesAccess** cmdlet disables HTTP access to a cluster for ODBC, Ambari, Oozie and WebHCatalog web services.

## EXAMPLES


## PARAMETERS

### -Certificate
Specifies the management certificate for an Azure subscription.

```yaml
Type: X509Certificate2
Parameter Sets: (All)
Aliases: Cert

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostedService
Specifies the namespace of an HDInsight service if you do not want to use the default namespace.

```yaml
Type: String
Parameter Sets: (All)
Aliases: CloudServiceName

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Endpoint
Specifies the endpoint to use to connect to Azure.
If you do not specify this parameter, this cmdlet uses the default endpoint.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Specifies the region in which an HDInsight cluster is located.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of a cluster.
This cmdlet disables HTTP access to the cluster that this parameter specifies.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ClusterName, DnsName

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Subscription
Specifies the subscription account that contains the HDInsight cluster to revoke.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Sub

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreSslErrors
Indicates whether Secure Sockets Layer (SSL) errors are ignored.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Grant-AzureHDInsightHttpServicesAccess](xref:ServiceManagement/Azure.HDInsight/v3.0.0/Grant-AzureHDInsightHttpServicesAccess.md)


