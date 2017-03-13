---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=623036
schema: 2.0.0
ms.assetid: 0D84EE44-D412-40CA-A106-576E23CB81E8
updated_at: 2/16/2017 4:08 PM
ms.date: 2/16/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Enable-AadrmDocumentTrackingFeature.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Enable-AadrmDocumentTrackingFeature.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/572fba461b5027bfccd8712f78d52c7a02e88f01/Azure%20Information%20Protection/AADRM/vlatest/Enable-AadrmDocumentTrackingFeature.md
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

# Enable-AadrmDocumentTrackingFeature

## SYNOPSIS
Enables document tracking for Rights Management.

## SYNTAX

```
Enable-AadrmDocumentTrackingFeature [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Enable-AadrmDocumentTrackingFeature** cmdlet enables the document tracking feature for Azure Information Protection. This cmdlet enables access to the document tracking site so that users can track or revoke access to documents that they have protected. This setting is organization-wide; you cannot enable document tracking for some users in your organization and not for others.

You must use PowerShell to enable document tracking; you cannot do this configuration by using a management portal.

By default, document tracking is enabled, so you would run this cmdlet only if somebody had previously disabled document tracking for your organization. When document tracking is enabled, users can access the document tracking site to see the protected documents that they have shared to date. Activity related to shared documents (who opened them, when, from which location) is shown for only when the document tracking site is enabled. For example, a user could revoke a document that they shared when document tracking was disabled but they cannot not see who opened this document when document tracking was disabled.

For additional information about the document tracking site, see [Configuring and using document tracking for Azure Information Protection](https://docs.microsoft.com/information-protection/rms-client/client-admin-guide-document-tracking) from the Azure Information Protection client administrator guide.

## EXAMPLES

### Example 1: Enable document tracking
```
PS C:\>EnableAadrmDocumentTrackingFeature
```

This command enables document tracking for Azure Information Protection.

## PARAMETERS

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs. The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Disable-AadrmDocumentTrackingFeature](xref:AADRM/vlatest/Disable-AadrmDocumentTrackingFeature.md)

[Get-AadrmDocumentTrackingFeature](xref:AADRM/vlatest/Get-AadrmDocumentTrackingFeature.md)

