---
external help file: AIP.dll-Help.xml
online version: https://go.microsoft.com/fwlink/?linkid=841544
schema: 2.0.0
ms.assetid: 37E0B181-C3DA-4FF7-8232-2619C4EBC6B6
updated_at: 2/8/2017 10:01 PM
ms.date: 2/8/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AzureInformationProtection/vlatest/Get-RMSServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AzureInformationProtection/vlatest/Get-RMSServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/9bf7ca6a52ad2962d10d27637cf9c9f07e19a7d8/Azure%20Information%20Protection/AzureInformationProtection/vlatest/Get-RMSServer.md
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

# Get-RMSServer

## SYNOPSIS
Gets a list of RMS servers that can issue templates.

## SYNTAX

```
Get-RMSServer [<CommonParameters>]
```

## DESCRIPTION
The **Get-RMSServer** cmdlet returns a list of RMS servers that can issue rights policy templates to apply Rights Management protection.

This cmdlet is not relevant to Azure RMS and not necessary if you have a single Active Directory Rights Management Services (AD RMS) deployment. Use this cmdlet when you have multiple deployments of AD RMS, so that you can identify the server (or cluster) name to specify when you use the [Get-RMSTemplate](./Get-RMSTemplate.md) cmdlet to identify the template that you want to use.

## EXAMPLES

### Example 1: Get a list of AD RMS servers that have templates
```
PS C:\>Get-RMSServer
Number of RMS Servers that can provide templates: 2


ConnectionInfo            DisplayName     AllowFromScratch


--------------            -----------     ----------------


Microsoft.Information     Contoso                     True
Microsoft.Information     Fabrikam                    True
```

This command gets a list of AD RMS servers by name that can provide templates. 

When the servers are configured in an AD RMS cluster, the cluster name only is displayed.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-RMSTemplate](xref:AzureInformationProtection/vlatest/Get-RMSTemplate.md)

