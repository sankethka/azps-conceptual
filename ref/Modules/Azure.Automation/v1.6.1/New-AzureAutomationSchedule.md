---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0B98EE25-57CD-44A0-8ACF-5402B973F9A5
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/New-AzureAutomationSchedule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/New-AzureAutomationSchedule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/New-AzureAutomationSchedule.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: erickson-doug
open_to_public_contributors: False
ms.service: azure-powershell
---

# New-AzureAutomationSchedule

## SYNOPSIS
Creates an Automation schedule.

## SYNTAX

### ByDaily (Default)
```
New-AzureAutomationSchedule [-Name] <String> [-StartTime] <DateTimeOffset> [-Description <String>]
 [-ExpiryTime <DateTimeOffset>] -DayInterval <Byte> [-AutomationAccountName] <String>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ByOneTime
```
New-AzureAutomationSchedule [-Name] <String> [-StartTime] <DateTimeOffset> [-Description <String>] [-OneTime]
 [-AutomationAccountName] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ByHourly
```
New-AzureAutomationSchedule [-Name] <String> [-StartTime] <DateTimeOffset> [-Description <String>]
 [-ExpiryTime <DateTimeOffset>] -HourInterval <Byte> [-AutomationAccountName] <String>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureAutomationSchedule** cmdlet creates a schedule in Microsoft Azure Automation.

## EXAMPLES

### Example 1: Create a one-time schedule
```
PS C:\> New-AzureAutomationSchedule -AutomationAccountName "Contoso17" -Name "Schedule01" -StartTime "23:00" -OneTime
```

The following command creates a schedule that runs one time on the current date at 11:00 PM.

### Example 2: Create a recurring schedule
```
PS C:\> $StartTime = Get-Date "13:00:00"
PS C:\> $EndTime = $StartTime.AddYears(1)
PS C:\> New-AzureAutomationSchedule -AutomationAccountName "Contoso17" -Name "Schedule02" -StartTime $StartTime -ExpiryTime $EndTime -DailyInterval 1
```

The following commands create a new schedule that runs at 1:00 PM every day for one year starting on the current day.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DayInterval
Specifies an interval, in days, for the schedule.

```yaml
Type: Byte
Parameter Sets: ByDaily
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Specifies a description.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ExpiryTime
Specifies the expiry time of a schedule as a **DateTime** object.
A string can be provided if it can be converted to a valid **DateTime**.

```yaml
Type: DateTimeOffset
Parameter Sets: ByDaily, ByHourly
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HourInterval
Specifies an interval, in hours, for the schedule.

```yaml
Type: Byte
Parameter Sets: ByHourly
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies a name for the schedule.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OneTime
Indicates that this operation creates a one-time schedule.

```yaml
Type: SwitchParameter
Parameter Sets: ByOneTime
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTime
Specifies the start time of a schedule as a **DateTime** object.
A string can be provided if it can be converted to a valid **DateTime**.

```yaml
Type: DateTimeOffset
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
In-memory profile.

```yaml
Type: AzureSMProfile
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

### Microsoft.Azure.Commands.Automation.Model.Schedule

## NOTES

## RELATED LINKS

[Get-AzureAutomationSchedule](xref:ServiceManagement/Azure.Automation/v1.6.1/Get-AzureAutomationSchedule.md)

[Remove-AzureAutomationSchedule](xref:ServiceManagement/Azure.Automation/v1.6.1/Remove-AzureAutomationSchedule.md)

[Set-AzureAutomationSchedule](xref:ServiceManagement/Azure.Automation/v1.6.1/Set-AzureAutomationSchedule.md)


