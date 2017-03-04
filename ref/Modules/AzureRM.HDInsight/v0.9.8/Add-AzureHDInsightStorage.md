---
external help file: Microsoft.Azure.Commands.HDInsight.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: B638CE9C-78A0-4C65-84C0-0B44C79EB142
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/Add-AzureHDInsightStorage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/Add-AzureHDInsightStorage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/Add-AzureHDInsightStorage.md
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

# Add-AzureHDInsightStorage

## SYNOPSIS
Adds an Azure Storage key to a cluster configuration object.

## SYNTAX

```
Add-AzureHDInsightStorage [-Config] <AzureHDInsightConfig> [-StorageAccountName] <String>
 [-StorageAccountKey] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureHDInsightStorage** cmdlet adds an Azure Storage account entry to the HDInsight configuration object created by the New-AzureHDInsightClusterConfig cmdlet.

## EXAMPLES

### Example 1: Add an Azure storage key to the cluster configuration object.
```
PS C:\> # Primary storage account info
        $storageAccountResourceGroupName = "Group"
        $storageAccountName = "yourstorageacct001"
        $storageAccountKey = Get-AzureStorageAccountKey `
            -ResourceGroupName $storageAccountResourceGroupName `
            -Name $storageAccountName | %{ $_.Key1 }
        $storageContainer = "container001"

        # Cluster configuration info
        $location = "East US 2"
        $clusterResourceGroupName = "Group"
        $clusterName = "your-hadoop-001"
        $clusterCreds = Get-Credential
        
        # If the cluster's resource group doesn't exist yet, run:
        #   New-AzureResourceGroup -Name $clusterResourceGroupName -Location $location

        # Second storage account info
        $secondStorageAccountResourceGroupName = "Group"
        $secondStorageAccountName = "yourstorageacct002"
        $secondStorageAccountKey = Get-AzureStorageAccountKey `
            -ResourceGroupName $secondStorageAccountResourceGroupName `
            -Name $secondStorageAccountName | %{ $_.Key1 }
        
        # Create the cluster
        New-AzureHDInsightClusterConfig `
            | Add-AzureHDInsightStorage `
                -StorageAccountName "$secondStorageAccountName.blob.core.windows.net" `
                -StorageAccountKey $key2 `
            | New-AzureHDInsightCluster `
                -ClusterType Hadoop `
                -OSType Windows `
                -ClusterSizeInNodes 4 `
                -ResourceGroupName $clusterResourceGroupName `
                -ClusterName $clusterName `
                -HttpCredential $clusterCreds `
                -Location $location `
                -DefaultStorageAccountName "$storageAccountName.blob.core.windows.net" `
                -DefaultStorageAccountKey $storageAccountKey `
                -DefaultStorageContainer $storageContainer
```

This command adds an blob storage account entry to the HDInsight configuration named Hadoop-001.

## PARAMETERS

### -Config
Specifies the HDInsight cluster configuration object that this cmdlet modifies.

```yaml
Type: AzureHDInsightConfig
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
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

### -StorageAccountKey
Specifies the storage account key for the storage account to be added to the new cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountName
Specifies the storage account name for the storage account to be added to the cluster.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureHDInsightStorage](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/Add-AzureHDInsightStorage.md)

[New-AzureHDInsightClusterConfig](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/New-AzureHDInsightClusterConfig.md)

[Azure HDInsight Cmdlets](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/AzureRM.HDInsight.md)


