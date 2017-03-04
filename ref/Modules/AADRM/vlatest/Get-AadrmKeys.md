---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400611
schema: 2.0.0
ms.assetid: 9B4056B1-7BEB-4DD2-A0C7-2F9400EDB3E5
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmKeys.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmKeys.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmKeys.md
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

# Get-AadrmKeys

## SYNOPSIS
Lists all tenant keys associated with your Rights Management tenant.

## SYNTAX

```
Get-AadrmKeys [<CommonParameters>]
```

## DESCRIPTION
The **Get-AadrmKeys** cmdlet lists all tenant keys associated with your tenant for the Azure Rights Management service. The tenant keys include the initial tenant key that Microsoft generates for you, and any tenant keys that are stored in Azure Key Vault. For more information, see [Planning and implementing your Azure Rights Management tenant key](https://docs.microsoft.com/rights-management/plan-design/plan-implement-tenant-key) on the Microsoft documentation site.

You must use PowerShell to configure your tenant key; you cannot do this configuration by using a management portal.

For security reasons, the cmdlet does not display the value of the tenant keys.

When you run this cmdlet, you will see **Status** and **KeyType**:

- The **Status** value shows **Archived** or **Active**. Archived identifies a tenant key that can be used to open previously protected content. Active identities the tenant key is currently in use to protect content.

- The **KeyType** value shows **Microsoft-managed** or **Customer-managed (BYOK)**. Microsoft-managed identifies the tenant key as managed by Microsoft (the default). Customer-managed identifies the tenant key as managed by your organization in Azure Key Vault. For a customer-managed key, you also see **Publickey**, which shows the base-64 encoded public key that is associated with the KeyIdentifier and that corresponds to the same information that Azure Key Vault provides for your key.

For security reasons, the cmdlet does not display the value of the Microsoft-managed key and displays only the public key information of customer-managed (BYOK) keys.

## EXAMPLES

### Example 1: Get keys
```
PS C:\>Get-AadrmKeys
```

This command lists all tenant keys associated with your tenant for the Azure Rights Management service.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AadrmKey](xref:AADRM/vlatest/Add-AadrmKey.md)

[Import-AadrmTpd](xref:AADRM/vlatest/Import-AadrmTpd.md)

[Azure Rights Management tenant key](https://docs.microsoft.com/rights-management/plan-design/plan-implement-tenant-key)
