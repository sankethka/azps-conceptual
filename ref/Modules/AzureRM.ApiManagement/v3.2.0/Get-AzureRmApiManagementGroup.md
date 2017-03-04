---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
ms.assetid: A9D4D235-4558-4190-BE36-FB85A955B893
online version: 
schema: 2.0.0
updated_at: 1/16/2017 5:36 PM
ms.date: 1/16/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.2.0/Get-AzureRmApiManagementGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.2.0/Get-AzureRmApiManagementGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/c7d6cc5a46847082b28a0458c4cf9c94d95adefd/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.2.0/Get-AzureRmApiManagementGroup.md
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

# Get-AzureRmApiManagementGroup

## SYNOPSIS
Gets all or specific API management groups.

## SYNTAX

### Get all groups (Default)
```
Get-AzureRmApiManagementGroup -Context <PsApiManagementContext> [-Name <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### Get by group ID
```
Get-AzureRmApiManagementGroup -Context <PsApiManagementContext> [-GroupId <String>] [-Name <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### Find groups by user
```
Get-AzureRmApiManagementGroup -Context <PsApiManagementContext> [-Name <String>] [-UserId <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### Find groups by product
```
Get-AzureRmApiManagementGroup -Context <PsApiManagementContext> [-Name <String>] [-ProductId <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagementGroup** cmdlet gets all or specific API management groups.

## EXAMPLES

### Example 1: Get all groups
```
PS C:\> Get-AzureRmApiManagementGroup -Context $APImContext
```

This command gets all groups.

### Example 2: Get a group by ID
```
PS C:\> Get-AzureRmApiManagementGroup -Context $APImContext -GroupId "0123456789"
```

This command gets  the group ID named 0123456789.

### Example 3: Get a group by name
```
PS C:\> Get-AzureRmApiManagementGroup -Context $APImContext -Name "Group0002"
```

This command gets the group named Group0002.

### Example 4: Get all user groups
```
PS C:\> Get-AzureRmApiManagementGroup -Context $APImContext -UserId "0123456789"
```

This command gets all user groups with the user ID named 0123456789.

## PARAMETERS

### -Context
Specifies a **PsApiManagementContext** object.

```yaml
Type: PsApiManagementContext
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GroupId
Specifies the group ID.
If specified, the cmdlet attempts to find the group by the identifier.

```yaml
Type: String
Parameter Sets: Get by group ID
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the management group.

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

### -ProductId
Specifies the identifier of an existing product.
If specified this cmdlet returns all groups the product is assigned to.
This parameter is optional.

```yaml
Type: String
Parameter Sets: Find groups by product
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserId
Specifies the identifier of existing product.
If specified the cmdlet will return all groups the product assigned to.

```yaml
Type: String
Parameter Sets: Find groups by user
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### IList<Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementGroup>

## NOTES

## RELATED LINKS

[New-AzureRmApiManagementGroup](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/New-AzureRmApiManagementGroup.md)

[Remove-AzureRmApiManagementGroup](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/Remove-AzureRmApiManagementGroup.md)

[Set-AzureRmApiManagementGroup](xref:ResourceManager/AzureRM.ApiManagement/v3.2.0/Set-AzureRmApiManagementGroup.md)
