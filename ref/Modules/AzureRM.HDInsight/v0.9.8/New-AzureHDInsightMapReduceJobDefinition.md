---
external help file: Microsoft.Azure.Commands.HDInsight.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 171388A7-78CA-4CB3-AA6F-1884CD919C06
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/New-AzureHDInsightMapReduceJobDefinition.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/New-AzureHDInsightMapReduceJobDefinition.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.HDInsight/v0.9.8/New-AzureHDInsightMapReduceJobDefinition.md
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

# New-AzureHDInsightMapReduceJobDefinition

## SYNOPSIS
Creates a MapReduce job object.

## SYNTAX

```
New-AzureHDInsightMapReduceJobDefinition [-Arguments <String[]>] [-Files <String[]>] [-StatusFolder <String>]
 -ClassName <String> [-Defines <Hashtable>] -JarFile <String> [-JobName <String>] [-LibJars <String[]>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureHDInsightMapReduceJobDefinition** cmdlet defines a MapReduce reduce job object.

## EXAMPLES

### Example 1: Create a MapReduce job definition
```
PS C:\> # Cluster info
        $clusterResourceGroupName = "Group"
        $clusterName = "your-hadoop-001"
        $clusterCreds = Get-Credential

        # MapReduce job details
        $statusFolder = "tempStatusFolder/"
        $className = ""
        $jarFilePath = ""

        New-AzureHDInsightMapReduceJobDefinition -StatusFolder $statusFolder `
            -ClassName $className `
            -JarFile $jarFilePath `
        | Start-AzureHDInsightJob -ResourceGroupName $clusterResourceGroupName `
            -ClusterName $clusterName `
            -ClusterCredential $clusterCreds
```

## PARAMETERS

### -Arguments
Specifies an array of arguments for a Hadoop job.
The arguments are passed as command-line arguments to each task.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClassName
Specifies the name of the job class in the Java Archive (JAR) file.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Defines
Specifies Hadoop configuration values to set when the job runs.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Files
Specifies an array of files that are required for a job.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -JarFile
Specifies the fully qualified name of a JAR file that contains the code and dependencies of a MapReduce job.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -JobName
Specifies the name of a MapReduce job.
This parameter is optional.
If you do not specify this parameter, the value of the *ClassName* parameter is used.

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

### -LibJars
Specifies an array of LibJar references of the job.

```yaml
Type: String[]
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
Type: AzureProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StatusFolder
Specifies the location of the folder that contains standard outputs and error outputs for a job, including its exit code and task logs.

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

## OUTPUTS

## NOTES

## RELATED LINKS

[Start-AzureHDInsightJob](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/Start-AzureHDInsightJob.md)

[Azure HDInsight Cmdlets](xref:ResourceManager/AzureRM.HDInsight/v0.9.8/AzureRM.HDInsight.md)


