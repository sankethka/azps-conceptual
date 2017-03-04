---
external help file: Microsoft.Azure.Commands.ManagedCache.dll-Help.xml
ms.assetid: AFD050D8-F4DC-4378-BD9D-FFE5C3D6E872
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v3.3.0/Get-AzureManagedCache.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v3.3.0/Get-AzureManagedCache.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v3.3.0/Get-AzureManagedCache.md
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

# Get-AzureManagedCache

## SYNOPSIS
Gets the Azure Caches in your Azure account.

## SYNTAX

```
Get-AzureManagedCache [[-Name] <String>] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureManagedCache** cmdlet get the Azure Caches in your account.
By default, it gets all Azure Caches in the account.
To get a particular Azure Cache, use the *Name* parameter.
An Azure Cache is a secure, dedicated cache that provides extremely fast access to data.
This distributed, in-memory, scalable solution enables you to build highly scalable and responsive applications.
For more information about Azure Cache, see [Azure Cache](http://azure.microsoft.com/en-us/services/cache/) (http://azure.microsoft.com/en-us/services/cache/).

## EXAMPLES

### Example 1: Get all Azure Caches
```
PS C:\>Get-AzureManagedCache
```

This command gets all Azure Caches in your account.

### Example 2: Get an Azure Cache by name
```
PS C:\>Get-AzureManagedCache -Name "ContosoCache"
```

This command gets the Azure Cache named ContosoCache.

## PARAMETERS

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

### -Name
Specifies the Azure cache.
You need to supply the name of an Azure Cache.
This parameter is case-sensitive.
This parameter is optional.
By default, **Get-AzureManagedCache** gets all Azure caches in the account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Microsoft.Azure.Commands.ManagedCache.Models.PSCacheService

## NOTES
* Before you use this cmdlet, call **Add-AzureAccount** or **Import-AzurePublishSettingsFile** to make your Azure account available to Windows PowerShell. 
For more information, see [How to install and configure Azure PowerShell](http://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/) (http://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/).

## RELATED LINKS

[New-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v3.3.0/New-AzureManagedCache.md)

[Set-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v3.3.0/Set-AzureManagedCache.md)

[Remove-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v3.3.0/Remove-AzureManagedCache.md)

[Get-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v3.3.0/Get-AzureManagedCacheAccessKey.md)

[New-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v3.3.0/New-AzureManagedCacheAccessKey.md)


