---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 35DC1012-8370-4D3F-A37D-33955076FB5E
updated_at: 1/10/2017 10:37 PM
ms.date: 1/10/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Resume-AzureSiteRecoveryJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Resume-AzureSiteRecoveryJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e460734ba591f3a2e82060724b596fbf2dcb96b3/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Resume-AzureSiteRecoveryJob.md
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
Resumes a suspended Site Recovery job.

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
The **Resume-AzureSiteRecoveryJob** cmdlet resumes a suspended Azure Site Recovery job.

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

The first command gets all the Azure Site Recovery jobs for the current Site Recovery vault by using the **Get-AzureSiteRecoveryJob** cmdlet, and then stores the results in the $Jobs variable.

The second command resumes the job specified by $Jobs.

## PARAMETERS

### -Comments
Specifies the comments for the job log.

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
Specifies the job to resume.

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

[Get-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Get-AzureSiteRecoveryJob.md)

[Restart-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Restart-AzureSiteRecoveryJob.md)

[Stop-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.0.0/Stop-AzureSiteRecoveryJob.md)


