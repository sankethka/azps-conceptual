---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 5A9A60D1-DFE2-44AA-BA1C-15B2FE196072
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureVMSqlServerAutoBackupConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureVMSqlServerAutoBackupConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureVMSqlServerAutoBackupConfig.md
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

# New-AzureVMSqlServerAutoBackupConfig

## SYNOPSIS
Creates a configuration object for SQL Server automatic backup.

## SYNTAX

### StorageUriSqlServerAutoBackup (Default)
```
New-AzureVMSqlServerAutoBackupConfig [-Enable] [[-RetentionPeriodInDays] <Int32>] [-EnableEncryption]
 [[-CertificatePassword] <SecureString>] [[-StorageUri] <Uri>] [[-StorageKey] <SecureString>]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### StorageContextSqlServerAutoBackup
```
New-AzureVMSqlServerAutoBackupConfig [-Enable] [[-RetentionPeriodInDays] <Int32>] [-EnableEncryption]
 [[-CertificatePassword] <SecureString>] [[-StorageContext] <AzureStorageContext>] [[-StorageUri] <Uri>]
 [[-StorageKey] <SecureString>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureVMSqlServerAutoBackupConfig** cmdlet creates a configuration object for SQL Server automatic backup.

## EXAMPLES

### Example 1: Create an auto-backup configuration using storage URI and account key
```
PS C:\> $ABS = New-AzureVMSqlServerAutoBackupConfig -Enable -RetentionPeriod 10 -StorageUri $StorageUrl -StorageKey $StorageAccountKeySecure
Enable                : True
EnableEncryption      : False
RetentionPeriodInDays : 10
```

This command creates an auto-backup configuration object by specifying storage URL and account key.

### Example 2: Create an auto-backup configuration using storage context
```
PS C:\> $ABS = New-AzureVMSqlServerAutoBackupConfig -StorageContext $StorageContext -Enable -RetentionPeriod 10
Enable                : True
EnableEncryption      : False
RetentionPeriodInDays : 10
```

This command creates an auto-backup configuration object by specifying storage context.

### Example 3: Create an auto-backup configuration using storage context with encryption and password
```
PS C:\> $ABS = New-AzureVMSqlServerAutoBackupConfig -StorageContext $StorageContext -Enable -RetentionPeriod 10 -EnableEncryption -CertificatePassword $CertPasswd
Enable                : True
EnableEncryption      : True
RetentionPeriodInDays : 10
```

This command creates an auto-backup configuration object by specifying Storage context and enabling encryption option with password.
The certificatepassword ist stored in the variable named $CertPasswd.

## PARAMETERS

### -Enable
Indicates that automated backup for the SQL Server virtual machine is enabled.
If you use this parameter, automated backup sets a backup schedule for all current and new databases.
This updates your Managed Backup settings to follow this schedule.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RetentionPeriodInDays
Specifies the length of the retention period in days.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -EnableEncryption
Indicates that encryption is enabled.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CertificatePassword
Specifies a password to encrypt the certificate that is used to perform SQL Server encrypted backups.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageUri
Specifies a URI to the blob storage account.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StorageKey
Specifies the storage key of the blob storage account.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -StorageContext
Specifies the storage account to be used to store backups.
Default is the storage account associated with the SQL Server virtual machine.

```yaml
Type: AzureStorageContext
Parameter Sets: StorageContextSqlServerAutoBackup
Aliases: 

Required: False
Position: 4
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

[New-AzureVMSqlServerAutoPatchingConfig](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureVMSqlServerAutoPatchingConfig.md)


