---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 69ED242E-2C41-4B70-AF1C-CAA10A9A3044
updated_at: 11/18/2016 8:33 AM
ms.date: 11/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Test-AzureName.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Test-AzureName.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2537e371256820c5575d89299741a8f7b6f7e585/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Test-AzureName.md
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

# Test-AzureName

## SYNOPSIS
Tests whether a Microsoft Azure cloud service name, storage service name or service bus namespace name exists or not.

## SYNTAX

### Service
```
Test-AzureName [-Service] [-Name] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### Storage
```
Test-AzureName [-Storage] [-Name] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ServiceBusNamespace
```
Test-AzureName [-ServiceBusNamespace] [-Name] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### Website
```
Test-AzureName [-Website] [-Name] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
If the name exists, the cmdlet returns $True.
If the name does not exist, it returns $False.

## EXAMPLES

### --------------  Example 1 --------------
```
C:\PS>Test-AzureName -Service "MyNameService1"
```

This command tests to see if the "MyNameService1" is an existing Microsoft Azure cloud service name.

### --------------  Example 2 --------------
```
C:\PS>Test-AzureName -Storage "mystorename1"
```

This command tests to see if the "mystorename1" is an existing Microsoft Azure storage service name.

### --------------  Example 3 --------------
```
C:\PS>Test-AzureName -ServiceBusNamespace "mynamespace"
```

This command tests to see if the "mynamespace" is an existing Microsoft Azure service bus namespace name.

## PARAMETERS

### -Name
Specifies the name of the service or storage account to test.

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

### -Service
Specifies to test for an existing service account.

```yaml
Type: SwitchParameter
Parameter Sets: Service
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Storage
Specifies to test for an existing storage account.

```yaml
Type: SwitchParameter
Parameter Sets: Storage
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServiceBusNamespace
Specifies to test for an existing service bus namespace.

```yaml
Type: SwitchParameter
Parameter Sets: ServiceBusNamespace
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Website
Specifies to test for an existing website.

```yaml
Type: SwitchParameter
Parameter Sets: Website
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
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
* node-dev, php-dev, python-dev

## RELATED LINKS


