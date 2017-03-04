---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 09E224C5-BA8C-4376-B061-0ABD99CC6E23
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v2.1.0/New-AzureProfile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v2.1.0/New-AzureProfile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v2.1.0/New-AzureProfile.md
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

# New-AzureProfile

## SYNOPSIS

## SYNTAX

### Token
```
New-AzureProfile [-Environment <AzureEnvironment>] [-SubscriptionId] <String> [-StorageAccount <String>]
 [-AccessToken] <String> [-AccountId] <String> [<CommonParameters>]
```

### Credentials
```
New-AzureProfile [-Environment <AzureEnvironment>] [-SubscriptionId] <String> [-StorageAccount <String>]
 [-Credential] <PSCredential> [[-Tenant] <String>] [<CommonParameters>]
```

### Empty
```
New-AzureProfile [-Environment <AzureEnvironment>] [<CommonParameters>]
```

### Certificate
```
New-AzureProfile [-Environment <AzureEnvironment>] [-SubscriptionId] <String> [-StorageAccount <String>]
 [-Certificate] <X509Certificate2> [<CommonParameters>]
```

### ServicePrincipal
```
New-AzureProfile [-Environment <AzureEnvironment>] [-SubscriptionId] <String> [-StorageAccount <String>]
 [-Credential] <PSCredential> [-Tenant] <String> [-ServicePrincipal] [<CommonParameters>]
```

### File
```
New-AzureProfile [-Path] <String> [<CommonParameters>]
```

### PropertyBag
```
New-AzureProfile [-Properties] <Hashtable> [<CommonParameters>]
```

## DESCRIPTION

## EXAMPLES

### 1:
```
PS C:\>
```

## PARAMETERS

### -Environment
```yaml
Type: AzureEnvironment
Parameter Sets: Token, Credentials, Empty, Certificate, ServicePrincipal
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
```yaml
Type: String
Parameter Sets: Token, Credentials, Certificate, ServicePrincipal
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccount
```yaml
Type: String
Parameter Sets: Token, Credentials, Certificate, ServicePrincipal
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessToken
```yaml
Type: String
Parameter Sets: Token
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccountId
```yaml
Type: String
Parameter Sets: Token
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
```yaml
Type: PSCredential
Parameter Sets: Credentials, ServicePrincipal
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tenant
```yaml
Type: String
Parameter Sets: Credentials
Aliases: TenantId

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: ServicePrincipal
Aliases: TenantId

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServicePrincipal
```yaml
Type: SwitchParameter
Parameter Sets: ServicePrincipal
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Certificate
```yaml
Type: X509Certificate2
Parameter Sets: Certificate
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
```yaml
Type: String
Parameter Sets: File
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Properties
```yaml
Type: Hashtable
Parameter Sets: PropertyBag
Aliases: 

Required: True
Position: 0
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


