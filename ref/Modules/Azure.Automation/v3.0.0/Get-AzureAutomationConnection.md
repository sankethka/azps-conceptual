---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EC99F058-7DB4-4987-8115-59F3CC1D1B6A
updated_at: 1/12/2017 11:14 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.0.0/Get-AzureAutomationConnection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.0.0/Get-AzureAutomationConnection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e37a9558a1813d4efba2a6ddbb733e45d88789da/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.0.0/Get-AzureAutomationConnection.md
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

# Get-AzureAutomationConnection

## SYNOPSIS
Gets an Azure Automation connection.

## SYNTAX

### ByAll (Default)
```
Get-AzureAutomationConnection [-AutomationAccountName] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

### ByConnectionName
```
Get-AzureAutomationConnection -Name <String> [-AutomationAccountName] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

### ByConnectionTypeName
```
Get-AzureAutomationConnection -ConnectionTypeName <String> [-AutomationAccountName] <String>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationConnection** cmdlet gets one or more Microsoft Azure Automation connections.
By default, all connections are returned.
To get a specific connection, specify its name.
To get all connections of a certain type, specify the connection type name.

## EXAMPLES

### Example 1: Get all connections
```
PS C:\> Get-AzureAutomationConnection -AutomationAccountName "Contoso17"
```

This command gets all connections in the Automation account named Contoso17.

### Example 2: Get all connections of a type
```
PS C:\> Get-AzureAutomationConnection -AutomationAccountName "Contoso17" -ConnectionTypeName "Azure"
```

This command gets all Azure connections in the Automation account named Contoso17.

### Example 3: Get a connection
```
PS C:\> Get-AzureAutomationConnection -AutomationAccountName "Contoso17" -Name "Azure"
```

This command gets the connection named MyConnection.

## PARAMETERS

### -AutomationAccountName
Specifies the name of the automation account with the connection to retrieve.

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

### -ConnectionTypeName
Specifies the name of a connection type for the connections to retrieve.

```yaml
Type: String
Parameter Sets: ByConnectionTypeName
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of a connection to retrieve.

```yaml
Type: String
Parameter Sets: ByConnectionName
Aliases: 

Required: True
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

[New-AzureAutomationConnection](xref:ServiceManagement/Azure.Automation/v3.0.0/New-AzureAutomationConnection.md)

[Remove-AzureAutomationConnection](xref:ServiceManagement/Azure.Automation/v3.0.0/Remove-AzureAutomationConnection.md)

[Set-AzureAutomationConnectionFieldValue](xref:ServiceManagement/Azure.Automation/v3.0.0/Set-AzureAutomationConnectionFieldValue.md)


