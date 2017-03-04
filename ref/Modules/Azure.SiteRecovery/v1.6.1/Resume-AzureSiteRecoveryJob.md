---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 3A4BB306-9D33-42DC-B7A0-AB75AE241908
updated_at: 1/14/2017 6:11 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Resume-AzureSiteRecoveryJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Resume-AzureSiteRecoveryJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/b2aea81f0846229c7b3ea0309bd2591c3b2941ff/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Resume-AzureSiteRecoveryJob.md
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

# Resume-AzureSiteRecoveryJob

## SYNOPSIS
Resumes a suspended job in Azure Site Recovery.

## SYNTAX

### ByObject (Default)
```
Resume-AzureSiteRecoveryJob -Job <ASRJob> [-Comments <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ById
```
Resume-AzureSiteRecoveryJob -Id <String> [-Comments <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Resume-AzureSiteRecoveryJob** cmdlet resumes a job in Microsoft Azure Site Recovery.
Use this cmdlet on suspended jobs only.
To see which actions you can take on a job, look at the **AllowedActions** property of the job object.

## EXAMPLES

### Example 1: Resume all jobs
```
PS C:\> $Jobs = Get-AzureSiteRecoveryJob  
PS C:\> Resume-AzureSiteRecoveryJob -Job $Jobs

ID               : d16397fb-cdf1-4972-b677-c333f3c557b4
ClientRequestId  : 32ace403-0916-4967-83a1-529176bd6e88-2014-49-06 15:49:24Z-P
State            : Suspended
StateDescription : WaitingForManualAction
StartTime        : 10/6/2014 10:19:28 AM
EndTime          : 10/6/2014 10:19:31 AM
AllowedActions   : {Cancel, RestartTestFailoverCleanup}
Name             : Test failover
Tasks            : {Recovery plan preflight checks, Create test environment, All groups failover: Pre steps (1), 
                   Recovery plan failover...} 
Errors           : {}
```

The first command gets all the Azure Site Recovery jobs for the current Azure Site Recovery vault by using the **Get-AzureSiteRecoveryJob** cmdlet, and then stores the results in the $Jobs variable.

The second command resumes the job specified by $Jobs.

## PARAMETERS

### -Comments
Specifies a comment for resuming the job.

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

### -Id
Specifies the ID of a job to resume.

```yaml
Type: String
Parameter Sets: ById
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Job
Specifies an Azure Site Recovery job object to resume.
To obtain a job object, use the **Get-AzureSiteRecoveryJob** cmdlet.

```yaml
Type: ASRJob
Parameter Sets: ByObject
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Profile
Specifies an Azure profile.

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

[Get-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v1.6.1/Get-AzureSiteRecoveryJob.md)

[Restart-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v1.6.1/Restart-AzureSiteRecoveryJob.md)

[Stop-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v1.6.1/Stop-AzureSiteRecoveryJob.md)


