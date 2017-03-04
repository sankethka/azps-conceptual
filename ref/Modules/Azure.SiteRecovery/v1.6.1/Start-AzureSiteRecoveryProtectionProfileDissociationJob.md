---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 7EEC0438-1158-4C71-90C1-04065C1F4899
updated_at: 1/14/2017 6:11 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Start-AzureSiteRecoveryProtectionProfileDissociationJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Start-AzureSiteRecoveryProtectionProfileDissociationJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/b2aea81f0846229c7b3ea0309bd2591c3b2941ff/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v1.6.1/Start-AzureSiteRecoveryProtectionProfileDissociationJob.md
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

# Start-AzureSiteRecoveryProtectionProfileDissociationJob

## SYNOPSIS
Starts a job to dissociate a protection profile from a protection container.

## SYNTAX

### EnterpriseToAzure (Default)
```
Start-AzureSiteRecoveryProtectionProfileDissociationJob -ProtectionProfile <ASRProtectionProfile>
 -PrimaryProtectionContainer <ASRProtectionContainer> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### EnterpriseToEnterprise
```
Start-AzureSiteRecoveryProtectionProfileDissociationJob -ProtectionProfile <ASRProtectionProfile>
 -PrimaryProtectionContainer <ASRProtectionContainer> -RecoveryProtectionContainer <ASRProtectionContainer>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureSiteRecoveryProtectionProfileDissociationJob** cmdlet starts a job to disassociate a protection profile from a protection container, or a protection container and a recovery protection container.

## EXAMPLES

### Example 1: Dissociate a protection profile
```
PS C:\> $ProtectionContainer01 = Get-AzureSiteRecoveryProtectionContainer -Id "5ba2ea95-856d-4033-9ca3-91e3e2c080b9"
PS C:\> $ProtectionContainer02 = Get-AzureSiteRecoveryProtectionContainer -Id "cf011f2a-aa19-443c-9f60-357f6b8afb77"
PS C:\> Start-AzureSiteRecoveryProtectionProfileDissociationJob -PrimaryProtectionContainer $ProtectionContainer01 -ProtectionProfile $ProtectionContainer01.AvailableProtectionProfiles[0] -RecoveryProtectionContainer $ProtectionContainer02

Name             : MyProtectionProfile
ID               : 51978b0f-9241-4153-9171-2e19344f0805
ClientRequestId  : bb6f3200-b7c6-4c6f-bcbc-a70bb9946f03-2015-01-30 02:55:55Z-P
State            : NotStarted
StateDescription : NotStarted
StartTime        : 
EndTime          : 
AllowedActions   : 
Tasks            : {}
Errors           : {}
```

The first command gets a protection container by using the **Get-AzureSiteRecoveryProtectionContainer** cmdlet, and then stores that container in the $ProtectionContainer01 variable.

The second command gets a protection container, and then stores it in the $ProtectionContainer02 variable.

The final command dissociates the protection profile from the container stored in $ProtectionContainer01 as the primary protection container.
The command dissociates the container stored in $ProtectionContainer02 as the recovery protection container.

## PARAMETERS

### -PrimaryProtectionContainer
Specifies the primary protection container from which to dissociate the protection profile.
To obtain an **ASRProtectionContainer** object, use the **Get-AzureSiteRecoveryProtectionContainer** cmdlet.

```yaml
Type: ASRProtectionContainer
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtectionProfile
Specifies the protection profile settings to disassociate from the protection containers.
Specifies the protection profile settings to apply to the protection containers.
To obtain an **ASRProtectionProfile** object, use the **New-AzureSiteRecoveryProtectionProfileObject** cmdlet.

```yaml
Type: ASRProtectionProfile
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RecoveryProtectionContainer
Specifies the recovery protection container from which to dissociate the protection profile.
To obtain an **ASRProtectionContainer** object, use **Get-AzureSiteRecoveryProtectionContainer**.

```yaml
Type: ASRProtectionContainer
Parameter Sets: EnterpriseToEnterprise
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
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

[Start-AzureSiteRecoveryProtectionProfileAssociationJob](xref:ServiceManagement/Azure.SiteRecovery/v1.6.1/Start-AzureSiteRecoveryProtectionProfileAssociationJob.md)

[Get-AzureSiteRecoveryProtectionContainer](xref:ServiceManagement/Azure.SiteRecovery/v1.6.1/Get-AzureSiteRecoveryProtectionContainer.md)

[New-AzureSiteRecoveryProtectionProfileObject](xref:ServiceManagement/Azure.SiteRecovery/v1.6.1/New-AzureSiteRecoveryProtectionProfileObject.md)


