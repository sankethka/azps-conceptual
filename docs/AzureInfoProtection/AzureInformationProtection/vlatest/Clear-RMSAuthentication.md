---
external help file: AIP.dll-Help.xml
online version: https://go.microsoft.com/fwlink/?linkid=841542
schema: 2.0.0
ms.assetid: 2114B811-35D8-45E4-930B-52A636AC40E4
updated_at: 2/8/2017 6:01 PM
ms.date: 2/8/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AzureInformationProtection/vlatest/Clear-RMSAuthentication.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AzureInformationProtection/vlatest/Clear-RMSAuthentication.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/b5b814c02caa6cd576a3db614749957f10782144/Azure%20Information%20Protection/AzureInformationProtection/vlatest/Clear-RMSAuthentication.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure Powershell
author: cabailey
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: cabailey
open_to_public_contributors: False
ms.service: rights-management
---

# Clear-RMSAuthentication

## SYNOPSIS
Clears credentials for a user who is authenticated to the Azure RMS service.

## SYNTAX

```
Clear-RMSAuthentication [<CommonParameters>]
```

## DESCRIPTION
The **Clear-RMSAuthentication** cmdlet clears the credentials that are used when a user has previously entered their user name and password to authenticate to Azure Rights Management (Azure RMS).

When you enter a user name and password to sign in to Azure RMS, the credentials are cached on the computer. Because these cached credentials are used across PowerShell sessions, to sign in as a different user, you must first run **Clear-RMSAuthentication**. You are then prompted for new credentials.

This cmdlet applies to Azure RMS only and when you authenticate as a user rather than a service principal. It does not apply to AD RMS.

Note: If you want to clear the credentials for a service principal that you specified with [Set-RMSServerAuthentication](./Set-RMSServerAuthentication), close your PowerShell session and start a new session that runs **Set-RMSServerAuthentication** with the new credentials.

## EXAMPLES

### Example 1: Clear authentication credentials
```
PS C:\>Clear-RMSAuthentication                        
Authentication cleared
```

This command clears the currently cached authentication credentials for a user who is authenticated to Azure RMS on a computer that is not joined to a domain.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Set-RMSServerAuthentication](xref:AzureInformationProtection/vlatest/Set-RMSServerAuthentication.md)
