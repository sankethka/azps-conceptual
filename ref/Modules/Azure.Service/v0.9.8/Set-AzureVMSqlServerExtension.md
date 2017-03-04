---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 550DC212-1694-4027-B6E2-F680351F5F8C
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureVMSqlServerExtension.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureVMSqlServerExtension.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureVMSqlServerExtension.md
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

# Set-AzureVMSqlServerExtension

## SYNOPSIS
Sets the Azure SQL Server extension on a virtual machine.

## SYNTAX

### EnableSqlServerExtension (Default)
```
Set-AzureVMSqlServerExtension [-ReferenceName <String>] [[-Version] <String>]
 [-AutoPatchingSettings <AutoPatchingSettings>] [-AutoBackupSettings <AutoBackupSettings>]
 [-KeyVaultCredentialSettings <KeyVaultCredentialSettings>] [-VM] <IPersistentVM> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### DisableSqlServerExtension
```
Set-AzureVMSqlServerExtension [-ReferenceName <String>] [[-Version] <String>] [-Disable] [-VM] <IPersistentVM>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

### UninstallSqlServerExtension
```
Set-AzureVMSqlServerExtension [-ReferenceName <String>] [[-Version] <String>] [-Uninstall]
 [-VM] <IPersistentVM> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureVMSqlServerExtension** cmdlet sets the Azure SQL Server extension on a virtual machine.

## EXAMPLES

### Example 1: Set auto-patching settings on a virtual machine
```
PS C:\>Get-AzureVM -ServiceName "ServiceName" -Name "VMName" | Set-AzureVMSqlServerExtension -AutoPatchingSettings $APS | Update-AzureVM
```

This command sets auto-patching settings on an Azure virtual machine.

### Example 2: Set auto-backup settings on a virtual machine
```
PS C:\>Get-AzureVM -ServiceName "ServiceName" -Name "VMName" | Set-AzureVMSqlServerExtension -AutoBackupSettings $ABS | Update-AzureVM
```

This command sets auto-backup settings on Azure virtual machine.

### Example 3: Disable an SQL Server extension on a virtual machine
```
PS C:\>Get-AzureVM -ServiceName "Service" -Name "VMName" | Set-AzureVMSqlServerExtension -Disable
```

This command disables SQL Server virtual machine extension on a given virtual machine.

### Example 4: Uninstall an SQL Server extension on a specific virtual machine
```
PS C:\>Get-AzureVM -ServiceName "Service" -Name "VMName" | Set-AzureVMSqlServerExtension -Uninstall
```

This command uninstalls a SQL Server virtual machine extension on the virtual machine named VMName.

## PARAMETERS

### -AutoBackupSettings
Specifies the automatic SQL Server backup settings.

```yaml
Type: AutoBackupSettings
Parameter Sets: EnableSqlServerExtension
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -KeyVaultCredentialSettings

```yaml
Type: KeyVaultCredentialSettings
Parameter Sets: EnableSqlServerExtension
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Version
Specifies the version of the SQL Server extension that Get-AzureVMSqlServerExtension retrieves settings from.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VM
Specifies the persistent virtual machine object.

```yaml
Type: IPersistentVM
Parameter Sets: (All)
Aliases: InputObject

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -AutoPatchingSettings
Specifies the automatic SQL Server patching settings.

```yaml
Type: AutoPatchingSettings
Parameter Sets: EnableSqlServerExtension
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Disable
Indicates that this cmdlet disables the extension state.

```yaml
Type: SwitchParameter
Parameter Sets: DisableSqlServerExtension
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -ReferenceName
Specifies the reference name of the SQL Server extension.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Uninstall
Indicates that this cmdlet uninstalls the SQL Server extension from the virtual machine.

```yaml
Type: SwitchParameter
Parameter Sets: UninstallSqlServerExtension
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVMSqlServerExtension](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVMSqlServerExtension.md)

[Remove-AzureVMSqlServerExtension](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureVMSqlServerExtension.md)


