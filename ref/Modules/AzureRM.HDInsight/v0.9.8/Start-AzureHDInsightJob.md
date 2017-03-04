---
external help file: Microsoft.Azure.Commands.HDInsight.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 26885C41-7208-4233-9C3B-9A0B2B105261
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/Start-AzureHDInsightJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/Start-AzureHDInsightJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/Start-AzureHDInsightJob.md
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

# Start-AzureHDInsightJob

## SYNOPSIS
Starts a given job on a cluster.

## SYNTAX

```
Start-AzureHDInsightJob [-ResourceGroupName] <String> [-ClusterName] <String>
 [-JobDefinition] <AzureHDInsightJobDefinition> [-ClusterCredential] <PSCredential> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureHDInsightJob** cmdlet starts a defined Azure HDInsight job on a specified cluster.
This can be a MapReduce job, a Streaming MapReduce job, a Hive job, or a Pig job.

## EXAMPLES

### Example 1: Start a job on the specified cluster
```
PS C:\> # Cluster info
        $clusterResourceGroupName = "Group"
        $clusterName = "your-hadoop-001"
        $clusterCreds = Get-Credential

        # Hive job details
        $statusFolder = "tempStatusFolder/"
        $query = "SHOW TABLES"

        New-AzureHDInsightHiveJobDefinition -StatusFolder $statusFolder `
            -Query $query `
        | Start-AzureHDInsightJob -ResourceGroupName $clusterResourceGroupName `
            -ClusterName $clusterName `
            -ClusterCredential $clusterCreds
```

## PARAMETERS

### -ClusterCredential
The credentials with which to connect to the cluster.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClusterName
The name of the cluster.

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

### -JobDefinition
Specifies the job to start on the Azure HDInsight cluster.

```yaml
Type: AzureHDInsightJobDefinition
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
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

### -ResourceGroupName
Gets or sets the name of the resource group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
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

[Get-AzureHDInsightJob](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/Get-AzureHDInsightJob.md)

[Stop-AzureHDInsightJob](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/Stop-AzureHDInsightJob.md)

[Wait-AzureHDInsightJob](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/Wait-AzureHDInsightJob.md)

[Azure HDInsight Cmdlets](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/AzureRM.HDInsight.md)


