---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
ms.assetid: DCF32403-245E-4BC8-BF13-0194A8DBD8EC
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.4.0/Set-AzureSiteRecoveryVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.4.0/Set-AzureSiteRecoveryVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.4.0/Set-AzureSiteRecoveryVM.md
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

# Set-AzureSiteRecoveryVM

## SYNOPSIS
Allows the update on a protected virtual machine.

## SYNTAX

```
Set-AzureSiteRecoveryVM -VirtualMachine <ASRVirtualMachine> [-Name <String>] [-Size <String>]
 [-PrimaryNic <String>] [-RecoveryNetworkId <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureSiteRecoveryVM** cmdlet allows the update on a virtual machine that Azure Site Recovery manages.
This cmdlet supports on premises Azure scenarios.

## EXAMPLES

### Example 1: Allow the update on a protected virtual machine
```
PS C:\> $ProtectionContainer = Get-AzureSiteRecoveryProtectionContainer
PS C:\> $VirtualMachines = Get-AzureSiteRecoveryVM -ProtectionContainer $ProtectionContainer 
PS C:\> Set-AzureSiteRecoveryVM -VirtualMachine $VirtualMachines[0] -Name "NewVirtualMachine05"
Name             : 
ID               : 8170d274-1e48-404a-b080-172ada140bc3
ClientRequestId  : 09354052-8430-4fa8-9a35-63196dd4b2b4-2015-02-03 04:19:06Z-P
State            : NotStarted
StateDescription : NotStarted
StartTime        : 
EndTime          : 
AllowedActions   : 
Tasks            : {}
Errors           : {}
```

The first command uses the **Get-AzureSiteRecoveryProtectionContainer** cmdlet to get a protected container, and then stores it in the $ProtectionContainer variable.

The second command gets the virtual machines in $ProtectionContainer, by using the **Get-AzureSiteRecoveryVM** cmdlet, and then stores them in the $VitrualMachines variable.

The final command allows updates for the first virtual machine in the $VitrualMachines array, named NewVirtualMachine05.

## PARAMETERS

### -Name
Specifies the name of the target virtual machine.

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

### -PrimaryNic
Specifies the primary network adapter.

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

### -RecoveryNetworkId
Specifies the recovery network ID.

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

### -Size
Specifies the target size.
Specify an Azure virtual machine size.

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

### -VirtualMachine
Specifies a virtual machine to update.
To obtain an **ASRVirtualMachine** object, use the **Get-AzureSiteRecoveryVM** cmdlet.

```yaml
Type: ASRVirtualMachine
Parameter Sets: (All)
Aliases: 

Required: True
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

[Get-AzureSiteRecoveryProtectionContainer](xref:ServiceManagement/Azure.SiteRecovery/v3.4.0/Get-AzureSiteRecoveryProtectionContainer.md)

[Get-AzureSiteRecoveryVM](xref:ServiceManagement/Azure.SiteRecovery/v3.4.0/Get-AzureSiteRecoveryVM.md)


