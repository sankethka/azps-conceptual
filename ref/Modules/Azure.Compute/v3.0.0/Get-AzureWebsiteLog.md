---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: DF246880-A433-4853-B0EB-F70D2A15AEED
updated_at: 1/12/2017 6:01 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Get-AzureWebsiteLog.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Get-AzureWebsiteLog.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/a72a97ed452f82624cbe43d1ad240418d55beae2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Get-AzureWebsiteLog.md
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
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

Gets log for the specified website.

## EXAMPLES

### Example 1
```
PS C:\> Get-AzureWebsiteLog -Tail
```

This example starts log streaming for all application logs.

### Example 2
```
PS C:\> Get-AzureWebsiteLog -Tail -Path http
```

This example starts log streaming for http logs.

### Example 3
```
PS C:\> Get-AzureWebsiteLog -Tail -Message Error
```

This example starts log streaming and show error logs only.

### Example 4
```
PS C:\> Get-AzureWebsiteLog -Name MyWebsite -ListPath
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
Indicates whether to list the log paths.

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
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

[Get-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/Get-AzureWebsite.md)

[New-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/New-AzureWebsite.md)

[Remove-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/Remove-AzureWebsite.md)

[Start-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/Start-AzureWebsite.md)


