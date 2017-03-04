---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400616
schema: 2.0.0
ms.assetid: 2EEF1510-4A63-4D3D-A707-541FC294DA33
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmUsageLog.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmUsageLog.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmUsageLog.md
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

# Get-AadrmUsageLog

## SYNOPSIS
Downloads Rights Management logs to local storage.

## SYNTAX

```
Get-AadrmUsageLog -Path <String> [-FromCounter <Int32>] [-ToCounter <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AadrmUsageLog** cmdlet downloads Azure Rights Management usage logs to local storage.

You must use PowerShell to get these logs; you cannot do this action by using a management portal.

Note: This cmdlet should be used only if you have usage logs prior to the usage logging change in February 2016.
After this date, the only Windows PowerShell cmdlet that you need for Azure RMS usage logging is [Get-AadrmUserLog](./Get-AadrmUserLog.md).

For more information about usage logging, see [Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage) on the Microsoft documentation site.

## EXAMPLES

### Example 1: Get all logs
```
PS C:\>Get-AadrmUsageLog -Path "E:\Logs\UsageLog.log"
```

This command saves all usage logs to the E:\Logs\UsageLog.log file.

### Example 2: Get a range of logs
```
PS C:\>Get-AadrmUsageLog -Path "E:\Logs\UsageLogRange.log " -FromCounter 1024 -ToCounter 2047
```

This command saves the specified range of usage logs to the E:\Logs\UsageLogRange.log file.

## PARAMETERS

### -FromCounter
Specifies a counter value. 

The cmdlet gets entries as far back as this counter value. To obtain a counter value, use the [Get-AadrmUsageLogLastCounterValue](./Get-AadrmUsageLogLastCounterValue.md) cmdlet.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Path
Specifies a path for the log.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ToCounter
Specifies a counter value.

The cmdlet gets entries as far forward as this counter value.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AadrmUsageLogLastCounterValue](xref:AADRM/vlatest/Get-AadrmUsageLogLastCounterValue.md)

[Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage)
