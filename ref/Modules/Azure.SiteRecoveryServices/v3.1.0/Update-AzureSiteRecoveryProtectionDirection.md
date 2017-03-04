---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
ms.assetid: 870EE77E-57D9-4B52-9F80-CB24D642E6E7
online version: 
schema: 2.0.0
updated_at: 12/19/2016 9:56 PM
ms.date: 12/19/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Update-AzureSiteRecoveryProtectionDirection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Update-AzureSiteRecoveryProtectionDirection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/5de5c3508c54977d862f546f41ff111633de6ee9/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Update-AzureSiteRecoveryProtectionDirection.md
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

# Update-AzureSiteRecoveryProtectionDirection

## SYNOPSIS
Updates the source and target server for the protection of a Site Recovery object.

## SYNTAX

### ByRPObject (Default)
```
Update-AzureSiteRecoveryProtectionDirection -RecoveryPlan <ASRRecoveryPlan> -Direction <String>
 [-WaitForCompletion] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### ByRPId
```
Update-AzureSiteRecoveryProtectionDirection -RPId <String> -Direction <String> [-WaitForCompletion]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### ByPEId
```
Update-AzureSiteRecoveryProtectionDirection -ProtectionEntityId <String> -ProtectionContainerId <String>
 -Direction <String> [-WaitForCompletion] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### ByPEObject
```
Update-AzureSiteRecoveryProtectionDirection -ProtectionEntity <ASRProtectionEntity> -Direction <String>
 [-WaitForCompletion] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Update-AzureSiteRecoveryProtectionDirection** cmdlet updates the source and target server for the protection of an Azure Site Recovery object after a commit failover operation finishes.

## EXAMPLES

### Example 1: Modify the direction for a protected object in a container
```
PS C:\> $Container = Get-AzureSiteRecoveryProtectionContainer 
PS C:\> $Protected = Get-AzureSiteRecoveryProtectionEntity -ProtectionContainer $Container  
PS C:\> Update-AzureSiteRecoveryProtectionDirection -Direction RecoveryToPrimary -ProtectionEntity $Protected 
ID               : c38eecdc-731c-405b-a61c-08db99aae2fe
ClientRequestId  : 32ace403-0916-4967-83a1-529176bd6e88-2014-49-06 15:49:24Z-P
State            : NotStarted
StateDescription : NotStarted
StartTime        : 
EndTime          : 
AllowedActions   : {}
Name             : 
Tasks            : {}
Errors           : {}
```

The first command gets the protected containers in the current Azure Site Recovery vault by using the **Get-AzureSiteRecoveryProtectionContainer** cmdlet, and then stores it in the $Container variable.

The second command gets the virtual machines that belong to the container stored in $Container by using the **Get-AzureSiteRecoveryProtectionEntity** cmdlet.
The command stores the results in the $Protected variable.

The final command sets the direction to RecoverToPrimary for the objects stored in $Protected.

## PARAMETERS

### -RecoveryPlan
Specifies a recovery plan object.

```yaml
Type: ASRRecoveryPlan
Parameter Sets: ByRPObject
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Direction
Specifies the direction of the commit.
The acceptable values for this parameter are:

- PrimaryToRecovery
- RecoveryToPrimary

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

### -WaitForCompletion
Indicates that the cmdlet waits for the operation to complete before it returns control to the Windows PowerShell console.

```yaml
Type: SwitchParameter
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
Type: AzureSMProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RPId
Specifies the ID of a recovery plan.
This cmdlet modifies the direction for the recovery plan that this parameter specifies.

```yaml
Type: String
Parameter Sets: ByRPId
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtectionEntityId
Specifies the ID of a protected virtual machine.
This cmdlet modifies the direction for the protected virtual machine that this parameter specifies.

```yaml
Type: String
Parameter Sets: ByPEId
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtectionContainerId
Specifies the ID of a protected container.
This cmdlet modifies the direction for a protected virtual machine that belongs to the container that this parameter specifies.

```yaml
Type: String
Parameter Sets: ByPEId
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtectionEntity
Specifies the protection entity object.

```yaml
Type: ASRProtectionEntity
Parameter Sets: ByPEObject
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureSiteRecoveryProtectionContainer](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Get-AzureSiteRecoveryProtectionContainer.md)

[Get-AzureSiteRecoveryProtectionEntity](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Get-AzureSiteRecoveryProtectionEntity.md)


