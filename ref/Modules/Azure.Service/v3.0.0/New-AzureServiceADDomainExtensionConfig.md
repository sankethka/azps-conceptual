---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 3D53B6CA-4155-45F8-BCB2-1ADDD1C09897
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureServiceADDomainExtensionConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureServiceADDomainExtensionConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureServiceADDomainExtensionConfig.md
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

# New-AzureServiceADDomainExtensionConfig

## SYNOPSIS
Generates the configuration for the AD domain extension for cloud services.

## SYNTAX

### JoinDomainUsingEnumOptions (Default)
```
New-AzureServiceADDomainExtensionConfig [[-Role] <String[]>] [[-X509Certificate] <X509Certificate2>]
 [[-ThumbprintAlgorithm] <String>] [-DomainName] <String> [-Restart] [[-Credential] <PSCredential>]
 [[-UnjoinDomainCredential] <PSCredential>] [[-Options] <JoinOptions>] [[-OUPath] <String>]
 [[-Version] <String>] [[-ExtensionId] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### WorkGroupName
```
New-AzureServiceADDomainExtensionConfig [[-Role] <String[]>] [[-X509Certificate] <X509Certificate2>]
 [[-ThumbprintAlgorithm] <String>] [-WorkgroupName] <String> [-Restart] [[-Credential] <PSCredential>]
 [[-Version] <String>] [[-ExtensionId] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### JoinDomainUsingJoinOption
```
New-AzureServiceADDomainExtensionConfig [[-Role] <String[]>] [[-X509Certificate] <X509Certificate2>]
 [[-ThumbprintAlgorithm] <String>] [-DomainName] <String> [-Restart] [[-Credential] <PSCredential>]
 [[-UnjoinDomainCredential] <PSCredential>] [-JoinOption] <UInt32> [[-OUPath] <String>] [[-Version] <String>]
 [[-ExtensionId] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### WorkGroupNameThumbprint
```
New-AzureServiceADDomainExtensionConfig [[-Role] <String[]>] [-CertificateThumbprint] <String>
 [[-ThumbprintAlgorithm] <String>] [-WorkgroupName] <String> [-Restart] [[-Credential] <PSCredential>]
 [[-Version] <String>] [[-ExtensionId] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### JoinDomainUsingEnumOptionsAndThumbprint
```
New-AzureServiceADDomainExtensionConfig [[-Role] <String[]>] [-CertificateThumbprint] <String>
 [[-ThumbprintAlgorithm] <String>] [-DomainName] <String> [-Restart] [[-Credential] <PSCredential>]
 [[-UnjoinDomainCredential] <PSCredential>] [[-Options] <JoinOptions>] [[-OUPath] <String>]
 [[-Version] <String>] [[-ExtensionId] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### JoinDomainUsingJoinOptionAndThumbprint
```
New-AzureServiceADDomainExtensionConfig [[-Role] <String[]>] [-CertificateThumbprint] <String>
 [[-ThumbprintAlgorithm] <String>] [-DomainName] <String> [-Restart] [[-Credential] <PSCredential>]
 [[-UnjoinDomainCredential] <PSCredential>] [-JoinOption] <UInt32> [[-OUPath] <String>] [[-Version] <String>]
 [[-ExtensionId] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureServiceADDomainExtensionConfig** cmdlet generates the configuration for the Active Directory (AD) domain extension for cloud services.

## EXAMPLES

### Example 1: Specify an AD domain configuration
```
PS C:\> $ExtensionCfg = New-AzureServiceADDomainExtensionConfig -Role WorkerRole1 -DomainName $Domain -Credential $Cred -JoinOption 35;

PS C:\> New-AzureDeployment -ServiceName $CloudSvc -Slot "Production" -Package $Pkg -Configuration $Config -ExtensionConfiguration $ExtensionCfg;
```

This command generates a configuration for the AD domain extension.

## PARAMETERS

### -Role
Specifies an optional array of roles to specify the remote desktop configuration for the AD domain configuration.
If you do not specify this parameter, the AD domain configuration is applied as the default configuration for all roles.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -X509Certificate
Specifies an X.509 certificate that is automatically uploaded to the cloud service and used for encrypting the extension private configuration.

```yaml
Type: X509Certificate2
Parameter Sets: JoinDomainUsingEnumOptions, WorkGroupName, JoinDomainUsingJoinOption
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ThumbprintAlgorithm
Specifies a thumbprint hashing algorithm that is used with the thumbprint to identify the certificate.
This parameter is optional and the default is sha1.

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

### -DomainName
Specifies the AD domain name.

```yaml
Type: String
Parameter Sets: JoinDomainUsingEnumOptions, JoinDomainUsingJoinOption, JoinDomainUsingEnumOptionsAndThumbprint, JoinDomainUsingJoinOptionAndThumbprint
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Restart
Specifies whether to restart the computer if the join operation succeeds.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Credential
Specifies the credentials to use to join the AD domain.
Credentials include a user name and password.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UnjoinDomainCredential
Specifies the credentials (user name and password) to unjoin the AD domain.

```yaml
Type: PSCredential
Parameter Sets: JoinDomainUsingEnumOptions, JoinDomainUsingJoinOption, JoinDomainUsingEnumOptionsAndThumbprint, JoinDomainUsingJoinOptionAndThumbprint
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Options
Specifies the unsigned integer join option.

```yaml
Type: JoinOptions
Parameter Sets: JoinDomainUsingEnumOptions, JoinDomainUsingEnumOptionsAndThumbprint
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OUPath
Specifies the organization unit (OU) path for AD domain join operation.

```yaml
Type: String
Parameter Sets: JoinDomainUsingEnumOptions, JoinDomainUsingJoinOption, JoinDomainUsingEnumOptionsAndThumbprint, JoinDomainUsingJoinOptionAndThumbprint
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Version
Specifies the extension version.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ExtensionId
Specifies the extension ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
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

### -JoinOption
Specifies the join option enumeration.

```yaml
Type: UInt32
Parameter Sets: JoinDomainUsingJoinOption, JoinDomainUsingJoinOptionAndThumbprint
Aliases: 

Required: True
Position: 7
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WorkgroupName
Specifies the workgroup name.

```yaml
Type: String
Parameter Sets: WorkGroupName, WorkGroupNameThumbprint
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CertificateThumbprint
Specifies a certificate thumbprint to use to encrypt the private configuration.
This certificate has to already exist in the certificate store.
If you do not specify a certificate, this cmdlet creates a certificate.

```yaml
Type: String
Parameter Sets: WorkGroupNameThumbprint, JoinDomainUsingEnumOptionsAndThumbprint, JoinDomainUsingJoinOptionAndThumbprint
Aliases: 

Required: True
Position: 1
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

[Get-AzureServiceADDomainExtension](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureServiceADDomainExtension.md)

[Set-AzureServiceADDomainExtension](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureServiceADDomainExtension.md)


