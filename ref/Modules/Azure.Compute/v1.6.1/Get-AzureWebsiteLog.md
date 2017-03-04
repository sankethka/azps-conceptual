---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 684981ED-8684-4816-A214-6C58CCB38711
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Get-AzureWebsiteLog.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Get-AzureWebsiteLog.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Get-AzureWebsiteLog.md
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

# Get-AzureWebsiteLog

## SYNOPSIS
Gets logs for the specified website.

## SYNTAX

### Tail
```
Get-AzureWebsiteLog [[-Path] <String>] [[-Message] <String>] [-Tail] [[-Name] <String>] [[-Slot] <String>]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ListPath
```
Get-AzureWebsiteLog [-ListPath] [[-Name] <String>] [[-Slot] <String>] [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
powershell_prelim

Gets log for the specified website.

## EXAMPLES

### Example 1
```
C:\PS>Get-AzureWebsiteLog -Tail
```

This example starts log streaming for all application logs.

### Example 2
```
C:\PS>Get-AzureWebsiteLog -Tail -Path http
```

This example starts log streaming for http logs.

### Example 3
```
C:\PS>Get-AzureWebsiteLog -Tail -Message Error
```

This example starts log streaming and show error logs only.

### Example 4
```
C:\PS>Get-AzureWebsiteLog -Name MyWebsite -ListPath
```

This example lists all available log paths in the website.

## PARAMETERS

### -Name
The name of the website.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
The path from which the log will be retrieved.
By default it is Root, which means include all the paths.

```yaml
Type: String
Parameter Sets: Tail
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Message
A string which will be used to filter the log message.
Only logs which contains this string will be retrieved.

```yaml
Type: String
Parameter Sets: Tail
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tail
Specifies whether to stream the logs.

```yaml
Type: SwitchParameter
Parameter Sets: Tail
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ListPath
Specifies whether to list the log paths.

```yaml
Type: SwitchParameter
Parameter Sets: ListPath
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Slot
Specifies the slot name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
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

## NOTES

## RELATED LINKS

[Get-AzureWebsite](xref:ServiceManagement/Azure.Compute/v1.6.1/Get-AzureWebsite.md)

[New-AzureWebsite](xref:ServiceManagement/Azure.Compute/v1.6.1/New-AzureWebsite.md)

[Remove-AzureWebsite](xref:ServiceManagement/Azure.Compute/v1.6.1/Remove-AzureWebsite.md)

[Start-AzureWebsite](xref:ServiceManagement/Azure.Compute/v1.6.1/Start-AzureWebsite.md)


