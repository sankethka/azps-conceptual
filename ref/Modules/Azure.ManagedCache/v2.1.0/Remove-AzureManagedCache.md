---
external help file: Microsoft.Azure.Commands.ManagedCache.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 92F3411D-9818-443E-B35E-68DEE70E9E54
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v2.1.0/Remove-AzureManagedCache.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v2.1.0/Remove-AzureManagedCache.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.ManagedCache/v2.1.0/Remove-AzureManagedCache.md
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

# Remove-AzureManagedCache

## SYNOPSIS
Removes an Azure Cache.

## SYNTAX

```
Remove-AzureManagedCache [-Name] <String> [-PassThru] [-Force] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureManagedCache** cmdlet removes an Azure Cache and all of the data in the Cache.
It returns $True if the operation was successful and $False if it failed.
By default, **Remove-AzureManagedCache** will prompt you for confirmation before it removes the Azure Cache, but you can use the *Force* parameter to suppress the prompt.
An Azure Cache is a secure, dedicated cache that provides extremely fast access to data.
This distributed, in-memory, scalable solution enables you to build highly scalable and responsive applications.
For more information about Azure Cache, see Azure Cachehttp://azure.microsoft.com/en-us/services/cache/.

## EXAMPLES

### Example 1: Remove an Azure Cache
```
PS C:\>Remove-AzureManagedCache -Name "ContosoCache"
Confirm
Are you sure you want to perform this action? 
Performing the operation "Delete" on target "ContosoCache".
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): 
 Y

True
```

This command removes the Azure Cache named ContosoCache.
The command prompts for confirmation before the cmdlet removes the Cache.
It returns a value of $True to indicate that the Cache was removed.

### Example 2: Remove all test caches
```
PS C:\>Get-AzureManagedCache | Where-Object Name -like Test* | Remove-AzureManagedCache -Force
```

This command removes all Azure Caches that have names that begin with Test.
It uses the Get-AzureManagedCache cmdlet to get the Azure Caches in your account.
It pipes them to the Where-Object cmdlet, which returns only the Azure Caches that have names that begin with Test.
Then, it pipes the test caches to the **Remove-AzureManagedCache** cmdlet with the *Force* parameter, which removes them without prompting for confirmation.

## PARAMETERS

### -Name
Specifies the name of the Azure Cache to remove.
The parameter value is case-sensitive.
Wildcard characters are not permitted.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

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

### -Force
Forces the command to run without asking for user confirmation.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Boolean

## NOTES
* Use the Add-AzureAccount or Import-AzurePublishSettingsFile cmdlet to make your Azure account available to Windows PowerShell before using this cmdlet. For more information, see How to install and configure Azure PowerShellhttp://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/.

## RELATED LINKS

[Azure Cache](http://azure.microsoft.com/en-us/services/cache/)

[How to install and configure Azure PowerShell](http://azure.microsoft.com/en-us/documentation/articles/install-configure-powershell/)

[Get-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v2.1.0/Get-AzureManagedCache.md)

[New-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v2.1.0/New-AzureManagedCache.md)

[Set-AzureManagedCache](xref:ServiceManagement/Azure.ManagedCache/v2.1.0/Set-AzureManagedCache.md)

[Get-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v2.1.0/Get-AzureManagedCacheAccessKey.md)

[New-AzureManagedCacheAccessKey](xref:ServiceManagement/Azure.ManagedCache/v2.1.0/New-AzureManagedCacheAccessKey.md)


