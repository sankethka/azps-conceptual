---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 7E238682-B5E7-42E8-B671-3E659063186F
updated_at: 1/14/2017 5:21 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v2.1.0/Restart-AzureSiteRecoveryJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v2.1.0/Restart-AzureSiteRecoveryJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/8b150e4b50ccfdd941f077b024dd06af0727c014/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v2.1.0/Restart-AzureSiteRecoveryJob.md
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

# Restart-AzureSiteRecoveryJob

## SYNOPSIS
Restarts an Azure Site Recovery job.

## SYNTAX

### ByObject (Default)
```
Restart-AzureSiteRecoveryJob -Job <ASRJob> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ById
```
Restart-AzureSiteRecoveryJob -Id <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Restart-AzureSiteRecoveryJob** cmdlet restarts a job in Microsoft Azure Site Recovery.
Use this cmdlet on failed and cancelled jobs only.
To see which actions you can take on a job, look at the **AllowedActions** property of the job object.

## EXAMPLES

### Example 1: Restart a job
```
PS C:\> Restart-AzureSiteRecoveryJob -Id "bbf0b839-9aaa-49e1-8354-601c9145966d"

ID               : bbf0b839-9aaa-49e1-8354-601c9145966d
ClientRequestId  : ef42c8b0-640c-4442-960b-349f83d161a5-2014-24-06 14:24:04Z-P
State            : Failed
StateDescription : Failed
StartTime        : 10/6/2014 9:41:08 AM
EndTime          : 10/6/2014 9:41:21 AM
AllowedActions   : {Cancel, Restart}
Name             : Enable protection
Tasks            : {Prerequisites check for enabling protection , Identifying replication target, Enable replication, 
                   Starting initial replication...} 
Errors           : {CreateProtectionTargetTask}
```

This command restarts the job that has the specified ID.

## PARAMETERS

### -Id
Specifies the ID of a job to restart.

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
Specifies an Azure Site Recovery job object to restart.
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

[Get-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v2.1.0/Get-AzureSiteRecoveryJob.md)

[Resume-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v2.1.0/Resume-AzureSiteRecoveryJob.md)

[Stop-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v2.1.0/Stop-AzureSiteRecoveryJob.md)


