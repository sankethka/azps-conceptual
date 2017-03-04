---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 9D9E924F-9E4A-4FD7-B596-F97FE741F37B
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchJob.md
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

# Get-AzureBatchJob

## SYNOPSIS
Gets Batch jobs under the specified Batch account or job schedule.

## SYNTAX

### ODataFilter (Default)
```
Get-AzureBatchJob [-JobScheduleId <String>] [-Filter <String>] [-MaxCount <Int32>]
 -BatchContext <BatchAccountContext> [-Profile <AzureProfile>] [<CommonParameters>]
```

### Id
```
Get-AzureBatchJob [[-Id] <String>] -BatchContext <BatchAccountContext> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### ParentObject
```
Get-AzureBatchJob [[-JobSchedule] <PSCloudJobSchedule>] [-Filter <String>] [-MaxCount <Int32>]
 -BatchContext <BatchAccountContext> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureBatchJob** cmdlet gets the Azure Batch jobs under the Batch account specified by the *BatchAccountContext* parameter.
You can use the *Id* parameter to get a single job, or you can use the *Filter* parameter to get the jobs that match an **OData** filter.
If you supply a job schedule ID or **PSCloudJobSchedule** instance, only the jobs under that job schedule will be returned.

## EXAMPLES

### Example 1: Get a Batch job by id
```
PS C:\>Get-AzureBatchJob -Id "Job01" -BatchContext $Context
CommonEnvironmentSettings   : 
Constraints                 : Microsoft.Azure.Commands.Batch.Models.PSJobConstraints
CreationTime                : 7/25/2015 9:12:07 PM
DisplayName                 : 
ETag                        : 0x8D29535B2941439
ExecutionInformation        : Microsoft.Azure.Commands.Batch.Models.PSJobExecutionInformation
Id                          : Job01
JobManagerTask              : 
JobPreparationTask          : 
JobReleaseTask              : 
LastModified                : 7/25/2015 9:12:07 PM
Metadata                    : 
PoolInformation             : Microsoft.Azure.Commands.Batch.Models.PSPoolInformation
PreviousState               : 
PreviousStateTransitionTime : 
Priority                    : 0
State                       : Active
StateTransitionTime         : 7/25/2015 9:12:07 PM
Statistics                  : 
Url                         : https://cmdletexample.westus.batch.azure.com/jobs/Job01
```

This command gets the job with ID Job01.

### Example 2: Get all active jobs under a specified job schedule
```
PS C:\>Get-AzureBatchJob -JobScheduleId "MyJobSchedule" -Filter "state eq 'active'" -BatchContext $Context
CommonEnvironmentSettings   : 
Constraints                 : Microsoft.Azure.Commands.Batch.Models.PSJobConstraints
CreationTime                : 7/25/2015 9:15:44 PM
DisplayName                 : 
ETag                        : 0x8D2953633DD13E1
ExecutionInformation        : Microsoft.Azure.Commands.Batch.Models.PSJobExecutionInformation
Id                          : MyJobSchedule:job-1
JobManagerTask              : 
JobPreparationTask          : 
JobReleaseTask              : 
LastModified                : 7/25/2015 9:15:44 PM
Metadata                    : 
PoolInformation             : Microsoft.Azure.Commands.Batch.Models.PSPoolInformation
PreviousState               : 
PreviousStateTransitionTime : 
Priority                    : 0
State                       : Active
StateTransitionTime         : 7/25/2015 9:15:44 PM
Statistics                  : 
Url                         : https://cmdletexample.westus.batch.azure.com/jobs/MyJobSchedule:job-1
```

This command gets the active jobs under the job schedule with ID MyJobSchedule.

### Example 3: Gets all jobs under a job schedule using pipelining
```
PS C:\>Get-AzureBatchJobSchedule -Id "MyJobSchedule" -BatchContext $Context | Get-AzureBatchJob -BatchContext $Context
CommonEnvironmentSettings   : 
Constraints                 : Microsoft.Azure.Commands.Batch.Models.PSJobConstraints
CreationTime                : 7/25/2015 9:15:44 PM
DisplayName                 : 
ETag                        : 0x8D2953633DD13E1
ExecutionInformation        : Microsoft.Azure.Commands.Batch.Models.PSJobExecutionInformation
Id                          : MyJobSchedule:job-1
JobManagerTask              : 
JobPreparationTask          : 
JobReleaseTask              : 
LastModified                : 7/25/2015 9:15:44 PM
Metadata                    : 
PoolInformation             : Microsoft.Azure.Commands.Batch.Models.PSPoolInformation
PreviousState               : 
PreviousStateTransitionTime : 
Priority                    : 0
State                       : Active
StateTransitionTime         : 7/25/2015 9:15:44 PM
Statistics                  : 
Url                         : https://cmdletexample.westus.batch.azure.com/jobs/MyJobSchedule:job-1
```

This command gets all jobs under the job schedule with ID MyJobSchedule.

## PARAMETERS

### -BatchContext
Specifies the **BatchAccountContext** instance that this cmdlet uses to interact with the Batch service.
To obtain a **BatchAccountContext** object that contains access keys for your subscription, use the Get-AzureBatchAccountKeys cmdlet.

```yaml
Type: BatchAccountContext
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Filter
Specifies the **OData** filter clause to use when querying for jobs.
If you do not specify a filter, and if you do not specify a job schedule, then all jobs under the Batch account will be returned. 
If not filter is specified, but a job schedule is specified, then all jobs under that job schedule will be returned.

```yaml
Type: String
Parameter Sets: ODataFilter, ParentObject
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Specifies the ID of the job.
You cannot specify wildcard characters.

```yaml
Type: String
Parameter Sets: Id
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -JobSchedule
Specifies the **PSCloudJobSchedule** object representing the job schedule which contains the jobs.
Use the Get-AzureBatchJobSchedule cmdlet to get a **PSCloudJobSchedule** object.

```yaml
Type: PSCloudJobSchedule
Parameter Sets: ParentObject
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -JobScheduleId
Specifies the ID of the job schedule which contains the jobs.

```yaml
Type: String
Parameter Sets: ODataFilter
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -MaxCount
Specifies the maximum number of jobs to return.
If you specify a value of zero (0) or less, the cmdlet does not use an upper limit.
The default value is 1000.

```yaml
Type: Int32
Parameter Sets: ODataFilter, ParentObject
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### PSCloudJob

## NOTES

## RELATED LINKS

[Get-AzureBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchAccountKeys.md)

[Get-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchJobSchedule.md)

[Remove-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v0.9.8/Remove-AzureBatchJob.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v0.9.8/AzureRM.Batch.md)


