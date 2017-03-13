---
Module Name: AzureInformationProtectionn
Module Guid: NA
Download Help Link: NA
Help Version: NA
Locale: en-US
ms.assetid: 35D99F89-BD73-457E-95C7-73857656FB59
updated_at: 2/8/2017 9:16 PM
ms.date: 2/8/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AzureInformationProtection/vlatest/AIP.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AzureInformationProtection/vlatest/AIP.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/6304f1d8f65314886b6934bd144a9dffdd6a3375/Azure%20Information%20Protection/AzureInformationProtection/vlatest/AIP.md
uid: AzureInformationProtection/vlatest/AIP.md
ms.topic: conceptual
ms.prod: powershell
ms.technology: Azure Powershell
author: cabailey
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: cabailey
open_to_public_contributors: False
ms.service: rights-management
---

# AzureInformationProtection Module
## Description
The following list contains links to the help topics for the Microsoft Azure Information Protection (AIP) cmdlets, which are installed with the [Azure Information Protection client](/information-protection/rms-client/aip-client). This PowerShell module replaces the RMS Protection Tool and the AD RMS Bulk Protection Tool. 

These cmdlets can be used with the Azure Information Protection service, the Azure Rights Management service (Azure RMS), and Active Directory Rights Management Services (AD RMS). 

The current version of the AzureInformationProtection module is **1.3.155.2**. If you have previously installed this module, run the following command to check the version: `(Get-Module AzureInformationProtection -ListAvailable).Version`.

For instructions to use these cmdlets, any current limitations, prerequisites, and scenario examples, see the following documentation from the Azure Information Protection client administrator guide: 

- [Using PowerShell with the Azure Information Protection client](/information-protection/rms-client/client-admin-guide-powershell)


The .dll file for this module is *AIP.dll*.

## AzureInformationProtection cmdlets
### [Clear-RMSAuthentication](./Clear-RMSAuthentication.md)
Clears credentials for a user who is authenticated to the Azure RMS service.

### [Get-AIPFileStatus](./Get-AIPFileStatus.md)
Gets the Azure Information Protection label and protection information for a specified file or files.


### [Get-RMSFileStatus](./Get-RMSFileStatus.md)
Gets the RMS protection status of a specified file.


### [Get-RMSServerAuthentication](./Get-RMSServerAuthentication.md)
Gets the status of your service principal authentication to Azure RMS.


### [Get-RMSServer](./Get-RMSServer.md)
Gets a list of RMS servers that can issue templates.


### [Get-RMSTemplate](./Get-RMSTemplate.md)
Gets a list of RMS templates.


### [New-RMSProtectionLicense](./New-RMSProtectionLicense.md)
Creates an ad-hoc rights policy for RMS protection.


### [Protect-RMSFile](./Protect-RMSFile.md)
Protects a specified file or the files in a specified folder by using RMS.


### [Set-AIPFileLabel](./Set-AIPFileLabel)
Sets or removes an Azure Information Protection label for a file, and sets the protection according to the label configuration.


### [Set-RMSServerAuthentication](./Set-RMSServerAuthentication.md)
Sets the service principal authentication credentials for Azure RMS.


### [Unprotect-RMSFile](./Unprotect-RMSFile.md)
Unprotects a file that is currently protected by RMS.
