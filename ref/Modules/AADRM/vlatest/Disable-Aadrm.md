---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400596
schema: 2.0.0
ms.assetid: B0B5958B-F190-469F-8528-EDB9926792CF
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Disable-Aadrm.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Disable-Aadrm.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Disable-Aadrm.md
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

# Disable-Aadrm

## SYNOPSIS
Deactivates Rights Management.

## SYNTAX

```
Disable-Aadrm [<CommonParameters>]
```

## DESCRIPTION
The **Disable-Aadrm** cmdlet disables the capabilities of Azure Rights Management for your organization.

You can also do this action in a management portal. For more information, see [Decommissioning and deactivating Azure Rights Management](https://docs.microsoft.com/rights-management/deploy-use/decommission-deactivate) on the Microsoft documentation site. 

Deactivate Rights Management only if you no longer want to protect documents and emails by using Azure Rights Management  and you no longer need access to content that was previously protected by using Rights Management.

If you accidentally deactivate Azure Rights Management or change your mind, you can simply activate it again by using the [Enable-Aadrm](./Enable-Aadrm.md) cmdlet to resume using the service. However, if you are deactivating Azure Rights Management because you no longer want to use the service, you might need to take additional steps. For more information, see [Decommissioning and deactivating Azure Rights Management](https://docs.microsoft.com/rights-management/deploy-use/decommission-deactivate).

## EXAMPLES

### Example 1: Disable Rights Management
```
PS C:\>Disable-Aadrm
```

This command deactivates Rights Management for your organization.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Enable-Aadrm](xref:AADRM/vlatest/Enable-Aadrm.md)

[Get-Aadrm](xref:AADRM/vlatest/Get-Aadrm.md)

[Azure Rights Management](https://docs.microsoft.com/rights-management/deploy-use/decommission-deactivate)
