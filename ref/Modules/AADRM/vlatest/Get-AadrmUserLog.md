---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=722835
schema: 2.0.0
ms.assetid: 7C339803-9C45-4B06-B741-DB8CD43EF886
updated_at: 2/12/2017 9:57 PM
ms.date: 2/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmUserLog.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmUserLog.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/e4c765ba645ee6c466dd1ff7182695aa9e59fb44/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmUserLog.md
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

# Get-AadrmUserLog

## SYNOPSIS
Downloads Rights Management user logs to local storage.

## SYNTAX

```
Get-AadrmUserLog -Path <String> [-FromDate <DateTime>] [-ToDate <DateTime>] [-ForDate <DateTime>] [-Force]
 [-NumberOfThreads <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AadrmUserLog** cmdlet downloads Azure Rights Management user logs to local storage.

You must use PowerShell to get these user logs; you cannot do this action by using a management portal.

When you run this command and specify a date only for the **DateTime** objects, the time is assumed to be 00:00:00 in your local time, and then converted to UTC. 

When you specify a time with a date (for example, -fordate "2/1/2016 15:00:00"), that date and time is converted to UTC. The **Get-AadrmUserLog** command then gets the logs for that UTC time period. 

See the examples for how you might need to change your **DateTime** values, to accommodate the conversion needed for your local time.

For more information about usage logging, For more information about usage logging, see [Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage) (https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage) on the Microsoft documentation site.

## EXAMPLES

### Example 1: Get user logs for a date range
```
PS C:\>Get-AadrmUserLog -Path 'C:\Logs' -FromDate 12/12/2015 -ToDate 12/15/2015 -NumberOfThreads 10
```

This command downloads user logs created between 12/12/2015 and 12/15/2015 (in UTC tme) to the folder C:\Logs.
The command uses 10 threads to download the logs.

### Example 2: Get user logs for a date
```
PS C:\>Get-AadrmUserLog -Path 'C:\Logs' -ForDate 12/5/2015
```

This command downloads the user logs for 12/5/2015 (in UTC time) to the folder C:\Logs.

### Example 3: Get user logs for a date, taking into account a UTC +offset time conversion
```
PS C:\>Get-AadrmUserLog -Path 'C:\Logs' -ForDate 2/2/2016 12:00:00
```

This command shows how you might need to take into account a UTC +offset time conversion from your local time, before downloading user logs to the folder C:\Logs.

You are in New Zealand, which means your computer's local time is UTC+12 and you want to download logs for 2/2/2016 for your local time rather than UTC. If you didn't specify the time of 12:00:00 with the date, your logs would contain data for only the first 12 hours of 2/2/2016 (and the last 12 hours of the previous day).

### Example 4: Get user logs for a date range, taking into account a UTC -offset time conversion
```
PS C:\>Get-AadrmUserLog -Path 'C:\Logs' -FromDate 2/1/2016 18:00:00 -ToDate 2/9/15/2016 18:00:00
```

This command shows how you might need to take into account a UTC -offset time conversion from your local time before downloading user logs to the folder C:\Logs.

You are in Houston, USA, which means your computer's local time is UTC-6 and you want to download logs from 2/2/2016 through 2/9/2016 for your local time rather than UTC. 

If you didn't specify the previous date and time of 18:00:00, your logs would be missing data for the first 6 hours of 2/2/2016 your local time (and an additional 6 hours for the ending date).

## PARAMETERS

### -Force
Indicates that this cmdlet overwrites, without prompting for confirmation, an existing log file for the same date or date range.

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

### -ForDate
Specifies a date (and optionally, a time) for the log file as a **DateTime** object.

Use this parameter when you do not use the *FromDate* parameter. 

To obtain a **DateTime** object, use the [Get-Date](http://go.microsoft.com/fwlink/?LinkID=293966) cmdlet.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FromDate
Specifies the start date (and optionally, a time) for the log file as a **DateTime** object.

Use this parameter when you do not use the *ForDate* parameter.

If you specify this parameter but not the *ToDate*, the end date is the day you run the command.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NumberOfThreads
Specifies the number of threads to use to download logs.

The acceptable values for this parameter are: 1-32. 

The default value is 3.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Specifies an existing path of the folder in which to save the logs.

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

### -ToDate
Specifies the stop date (and optionally, a time) for the log file as a **DateTime** object.

Optionally, specify this parameter when you use the *FromDate* parameter, to specify a specific date range. If you do not specify this parameter when you use the *FromDate* parameter, the end date is the day you run the command.

```yaml
Type: DateTime
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

## OUTPUTS

## NOTES

## RELATED LINKS

[Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage)

[Get-Date](http://go.microsoft.com/fwlink/?LinkID=293966)
