---
external help file: Microsoft.WindowsAzure.Commands.HDInsight.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 426A67B3-3EA1-492E-AE75-31BDFC522FF7
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.HDInsight/v0.9.8/Wait-AzureHDInsightJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.HDInsight/v0.9.8/Wait-AzureHDInsightJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.HDInsight/v0.9.8/Wait-AzureHDInsightJob.md
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

# Wait-AzureHDInsightJob

## SYNOPSIS
Awaits the completion or failure of an HDInsight job and displays the progress of the job.

## SYNTAX

### Get jobDetails History of a HDInsight Cluster (Default)
```
Wait-AzureHDInsightJob [[-Credential] <PSCredential>] [-WaitTimeoutInSeconds <Double>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

### Get jobDetails History of a HDInsight Cluster (with Specific Subscription Credential)
```
Wait-AzureHDInsightJob [-Certificate <X509Certificate2>] [-HostedService <String>] [-Endpoint <Uri>]
 [-IgnoreSslErrors <Boolean>] -Job <AzureHDInsightJob> [-Subscription] <String>
 [-WaitTimeoutInSeconds <Double>] [-Profile <AzureProfile>] [<CommonParameters>]
```

### Wait Job with JobId on an HDInsight Cluster
```
Wait-AzureHDInsightJob -Cluster <String> [[-Credential] <PSCredential>] -JobId <String>
 [-WaitTimeoutInSeconds <Double>] [-Profile <AzureProfile>] [<CommonParameters>]
```

### Wait Job with Job on an HDInsight Cluster
```
Wait-AzureHDInsightJob [[-Credential] <PSCredential>] -Job <AzureHDInsightJob> [-WaitTimeoutInSeconds <Double>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
This version of Azure PowerShell HDInsight is deprecated.
These cmdlets will be removed by January 1, 2017.
Please use the newer version of Azure PowerShell HDInsight.

For information about how to use the new HDInsight to create a cluster, see Create Linux-based clusters in HDInsight using Azure PowerShellhttps://azure.microsoft.com/en-us/documentation/articles/hdinsight-hadoop-create-linux-clusters-azure-powershell/.
For information about how to submit jobs by using Azure PowerShell and other approaches, see Submit Hadoop jobs in HDInsighthttps://azure.microsoft.com/en-us/documentation/articles/hdinsight-submit-hadoop-jobs-programmatically/.
For reference information about Azure PowerShell HDInsight, see Azure HDInsight Cmdletshttps://msdn.microsoft.com/en-us/library/mt438705.aspx.

The **Wait-AzureHDInsightJob** cmdlet awaits the completion or failure of an Azure HDInsight job and displays the progress of the job.

## EXAMPLES

### Example 1: Run a job and wait for it to complete
```
PS C:\>$SubId = (Get-AzureSubscription -Current).SubscriptionId
PS C:>\ $ClusterName = "MyCluster"
PS C:>\ $WordCountJob = New-AzureHDInsightMapReduceJobDefinition -JarFile "/Example/Apps/Hadoop-examples.jar" -ClassName "Wordcount" -Defines @{ "mapred.map.tasks" = "3" } -Arguments "/Example/Data/Gutenberg/Davinci.txt", "/Example/Output/WordCount" 
PS C:>\ $WordCountJob | Start-AzureHDInsightJob -Subscription $SubId -Cluster $ClusterName 
    | Wait-AzureHDInsightJob -Subscription $SubId -WaitTimeoutInSeconds 3600 
    | Get-AzureHDInsightJobOutput -Cluster $ClusterName -Subscription $SubId -StandardError
```

The first command gets the current Azure subscription ID, and then stores it in the $SubId variable.

The second command gets the specified cluster, and then stores it in the $ClusterName variable.

The third command uses the New-AzureHDInsightMapReduceJobDefinition cmdlet to create a MapReduce job definition, and then stores it in the $WordCountJob variable.

The fourth command uses several cmdlets in sequence: 

- It uses the pipeline operator to pass $WordCountJob to the Start-AzureHDInsightJob cmdlet to start the job. 
- The job is passed to the **Wait-AzureHDInsightJob** cmdlet to wait 3600 seconds for the job to complete. 
- If the job completes, the command uses the Get-AzureHDInsightJobOutput cmdlet to get the job output.

## PARAMETERS

### -Credential
Specifies the credentials to use for direct HTTP access to a cluster.
You can specify this parameter instead of the *Subscription* parameter to authenticate access to a cluster.

```yaml
Type: PSCredential
Parameter Sets: Get jobDetails History of a HDInsight Cluster, Wait Job with JobId on an HDInsight Cluster, Wait Job with Job on an HDInsight Cluster
Aliases: Cred

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WaitTimeoutInSeconds
Specifies the time-out, in seconds, for the wait operation.
If the time-out expires before the job completes, the cmdlet ceases to run.

```yaml
Type: Double
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Certificate
Specifies the management certificate for an Azure subscription.

```yaml
Type: X509Certificate2
Parameter Sets: Get jobDetails History of a HDInsight Cluster (with Specific Subscription Credential)
Aliases: Cert

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostedService
Specifies the namespace of an HDInsight service.
If you do not specify this parameter, the default namespace is used.

```yaml
Type: String
Parameter Sets: Get jobDetails History of a HDInsight Cluster (with Specific Subscription Credential)
Aliases: CloudServiceName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Endpoint
Specifies the endpoint to use to connect to Azure.
If you do not specify this parameter, this cmdlet uses the default endpoint.

```yaml
Type: Uri
Parameter Sets: Get jobDetails History of a HDInsight Cluster (with Specific Subscription Credential)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Job
Specifies an Azure HDInsight job.

```yaml
Type: AzureHDInsightJob
Parameter Sets: Get jobDetails History of a HDInsight Cluster (with Specific Subscription Credential), Wait Job with Job on an HDInsight Cluster
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Subscription
Specifies a subscription.
This cmdlet waits for a job for the subscription that this parameter specifies.

```yaml
Type: String
Parameter Sets: Get jobDetails History of a HDInsight Cluster (with Specific Subscription Credential)
Aliases: Sub

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cluster
Specifies a cluster.
This cmdlet waits for a job on the cluster that this parameter specifies.

```yaml
Type: String
Parameter Sets: Wait Job with JobId on an HDInsight Cluster
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -JobId
Specifies the ID of the job to wait for.

```yaml
Type: String
Parameter Sets: Wait Job with JobId on an HDInsight Cluster
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -IgnoreSslErrors
Indicates whether Secure Sockets Layer (SSL) errors are ignored.

```yaml
Type: Boolean
Parameter Sets: Get jobDetails History of a HDInsight Cluster (with Specific Subscription Credential)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies an Azure profile.
If you do not specify this parameter, this cmdlet uses the local default profile file.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureHDInsightJob](xref:ServiceManagement/Azure.HDInsight/v0.9.8/Get-AzureHDInsightJob.md)

[Get-AzureHDInsightJobOutput](xref:ServiceManagement/Azure.HDInsight/v0.9.8/Get-AzureHDInsightJobOutput.md)

[Start-AzureHDInsightJob](xref:ServiceManagement/Azure.HDInsight/v0.9.8/Start-AzureHDInsightJob.md)

[Stop-AzureHDInsightJob](xref:ServiceManagement/Azure.HDInsight/v0.9.8/Stop-AzureHDInsightJob.md)


