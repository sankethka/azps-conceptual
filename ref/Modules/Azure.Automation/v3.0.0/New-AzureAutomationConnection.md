---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 9AD5F11E-17BF-447C-B967-3373625CB3A4
updated_at: 1/12/2017 11:14 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.0.0/New-AzureAutomationConnection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.0.0/New-AzureAutomationConnection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e37a9558a1813d4efba2a6ddbb733e45d88789da/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.0.0/New-AzureAutomationConnection.md
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

# New-AzureAutomationConnection

## SYNOPSIS
Creates a connection in Automation.

## SYNTAX

```
New-AzureAutomationConnection [-Name] <String> -ConnectionTypeName <String>
 -ConnectionFieldValues <IDictionary> [-Description <String>] [-AutomationAccountName] <String>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureAutomationConnection** cmdlet creates a connection in Microsoft Azure Automation.

## EXAMPLES


## PARAMETERS

### -AutomationAccountName
Specifies the name of the Automation account the connection will be stored in.

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

### -Name
Specifies a name for the connection.

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

### -ConnectionFieldValues
Specifies a hash table that contains key/value pairs.
The keys represent the connection fields on the specified connection type.
The values represent the specific values to store for each connection field for the connection instance.

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ConnectionTypeName
Specifies the name of the connection type.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Description
Specifies a description for the credential.

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

### Microsoft.Azure.Commands.Automation.Model.Connection

## NOTES

## RELATED LINKS

[Get-AzureAutomationConnection](xref:ServiceManagement/Azure.Automation/v3.0.0/Get-AzureAutomationConnection.md)

[Remove-AzureAutomationConnection](xref:ServiceManagement/Azure.Automation/v3.0.0/Remove-AzureAutomationConnection.md)

[Set-AzureAutomationConnectionFieldValue](xref:ServiceManagement/Azure.Automation/v3.0.0/Set-AzureAutomationConnectionFieldValue.md)


