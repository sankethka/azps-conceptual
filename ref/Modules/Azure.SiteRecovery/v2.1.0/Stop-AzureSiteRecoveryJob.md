---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 8067B802-9DC5-4DA6-8B07-116ACD808BD9
updated_at: 1/14/2017 5:21 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v2.1.0/Stop-AzureSiteRecoveryJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v2.1.0/Stop-AzureSiteRecoveryJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/8b150e4b50ccfdd941f077b024dd06af0727c014/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v2.1.0/Stop-AzureSiteRecoveryJob.md
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

# Stop-AzureSiteRecoveryJob

## SYNOPSIS
Stops an Azure Site Recovery job.

## SYNTAX

### ByObject (Default)
```
Stop-AzureSiteRecoveryJob -Job <ASRJob> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ById
```
Stop-AzureSiteRecoveryJob -Id <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureSiteRecoveryJob** cmdlet stops a Microsoft Azure Site Recovery job.
Use this cmdlet for running jobs only.
To see which actions you can take on a job, look at the **AllowedActions** property of the job object.

## EXAMPLES

### Example 1: Stop all jobs
```
PS C:\> $Jobs= Get-AzureSiteRecoveryJob 
PS C:\> Stop-AzureSiteRecoveryJob -Job $Jobs
```

The first command gets the Azure Site Recovery jobs for the current Azure Site Recovery vault by using the **Get-AzureSiteRecoveryJob** cmdlet, and then stores the results in the $Jobs variable.

The second command stops the jobs specified by $Jobs.

## PARAMETERS

### -Id
Specifies the ID of a job to stop.

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
Specifies an Azure Site Recovery job object to stop.
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

[Restart-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v2.1.0/Restart-AzureSiteRecoveryJob.md)

[Resume-AzureSiteRecoveryJob](xref:ServiceManagement/Azure.SiteRecovery/v2.1.0/Resume-AzureSiteRecoveryJob.md)


