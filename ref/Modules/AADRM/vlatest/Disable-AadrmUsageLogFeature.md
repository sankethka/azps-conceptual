---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400600
schema: 2.0.0
ms.assetid: 469B8EE7-0EE9-4BD7-BC24-A3AD74111FB0
updated_at: 2/8/2017 6:01 PM
ms.date: 2/8/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Disable-AadrmUsageLogFeature.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Disable-AadrmUsageLogFeature.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/b5b814c02caa6cd576a3db614749957f10782144/Azure%20Information%20Protection/AADRM/vlatest/Disable-AadrmUsageLogFeature.md
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

# Disable-AadrmUsageLogFeature

## SYNOPSIS
Disables the usage log for Rights Management.

## SYNTAX

```
Disable-AadrmUsageLogFeature [<CommonParameters>]
```

## DESCRIPTION
The **Disable-AadrmUsageLogFeature** cmdlet disables usage logging for the Azure Rights Management service. If you disable this logging, the cmdlet does not delete existing logs. If you enable usage logging again, logging begins at the point in the log where logging previously stopped.

Note: This cmdlet is not needed and will not run successfully after the usage logging change in February 2016. After this date, usage logging is automatically enabled and cannot be disabled; the only PowerShell cmdlet that you need for Azure Rights Management usage logging is [Get-AadrmUserLog](./Get-AadrmUserLog.md).

For more information about usage logging, see [Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage) (https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage) on the Microsoft documentation site.

## EXAMPLES

### Example 1: Disable usage logging
```
PS C:\>Disable-AadrmUsageLogFeature
```

This command disables the usage log for your organization.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Enable-AadrmUsageLogFeature](xref:AADRM/vlatest/Enable-AadrmUsageLogFeature.md)

[Get-AadrmUsageLogFeature](xref:AADRM/vlatest/Get-AadrmUsageLogFeature.md)

[Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage)
