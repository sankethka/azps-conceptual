---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 1/26/2017 4:41 PM
ms.date: 1/26/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDeviceConfiguration.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDeviceConfiguration.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/644983facd286426ad83f709789786ce621938b5/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDeviceConfiguration.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-AzureADDeviceConfiguration

## SYNOPSIS
This cmdlet retrieves the device configuration object

## SYNTAX

```
Get-AzureADDeviceConfiguration
```

## DESCRIPTION
This cmdlet retrieves the device configuration object

## EXAMPLES

### Example 1
```
PS C:\WINDOWS\system32> Get-AzureADDeviceConfiguration | fl


DeletionTimeStamp                   :
ObjectId                            : 2af3478a-27da-4837-a387-b22b3fb236a8
ObjectType                          : DeviceConfiguration
PublicIssuerCertificates            : {}
CloudPublicIssuerCertificates       : {}
RegistrationQuota                   : 20
MaximumRegistrationInactivityPeriod : 90
```

This example shows the formatted list for the device configuration record that is retrieved by the cmdlet

## PARAMETERS

## INPUTS

### None


## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

