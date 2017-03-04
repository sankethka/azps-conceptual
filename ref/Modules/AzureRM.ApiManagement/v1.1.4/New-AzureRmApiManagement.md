---
external help file: Microsoft.Azure.Commands.ApiManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 6B5595CA-246E-4381-A37E-24DFAE307109
updated_at: 1/12/2017 1:09 AM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v1.1.4/New-AzureRmApiManagement.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v1.1.4/New-AzureRmApiManagement.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/744a3daf267d93d9084ba9f20bf25d56439bcc7f/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v1.1.4/New-AzureRmApiManagement.md
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

# New-AzureRmApiManagement

## SYNOPSIS
Creates an API Management deployment.

## SYNTAX

```
New-AzureRmApiManagement -ResourceGroupName <String> -Name <String> -Location <String> -Organization <String>
 -AdminEmail <String> [-Sku <PsApiManagementSku>] [-Capacity <Int32>]
 [-Tags <System.Collections.Generic.Dictionary`2[System.String,System.String]>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmApiManagement** cmdlet creates an API Management deployment in Azure API Management.

## EXAMPLES

### Example 1: Create at Developer tier API Management service
```
PS C:\> New-AzureRmApiManagement -ResourceGroupName "ContosoGroup02" -Name "ContosoApi" -Location "Central US" -Organization "Contoso" -AdminEmail "admin@contoso.com"
```

This command creates a Developer tier API Management service.
The command specifies the organization and the administrator address.
The command does not specify the *SKU* parameter.
Therefore, the cmdlet uses the default value of Developer.

### Example 2: Create a Standard tier service that has three units
```
PS C:\> New-AzureRmApiManagement -ResourceGroupName "ContosoGroup02 -Name "ContosoApi" -Location "Central US" -Organization "Contoso" -AdminEmail "admin@contoso.com" -Sku Standard -Capacity 3
```

This command creates a Standard tier API Management service that has three units.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the of resource group under which this cmdlet creates an API Management deployment.

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

### -Name
Specifies a name for the API Management deployment.

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

### -Location
Specifies the location in which this cmdlet creates an API Management deployment.
To obtain valid locations, use the **Get-AzureLocation** cmdlets.

Valid values are:

- North Central US
- South Central US
- Central US
- West Europe
- North Europe
- West US
- East US
- East US 2
- Japan East
- Japan West
- Brazil South
- Southeast Asia
- East Asia
- Australia East
- Australia Southeast

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

### -Organization
Specifies the name of an organization.
API Management uses this address in the developer portal in email notifications.

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

### -AdminEmail
Specifies the originating email address for all notifications that the API Management system sends.

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

### -Sku
Specifies the tier of the API Management service.
Valid values are:

- Developer
- Standard
- Premium

The default is Developer.

```yaml
Type: PsApiManagementSku
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Capacity
Specifies the SKU capacity of the Azure API Management service.
The default is one (1).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tags
Specifies a dictionary of tags.

```yaml
Type: System.Collections.Generic.Dictionary`2[System.String,System.String]
Parameter Sets: (All)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Backup-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v1.1.4/Backup-AzureRmApiManagement.md)

[Get-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v1.1.4/Get-AzureRmApiManagement.md)

[Remove-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v1.1.4/Remove-AzureRmApiManagement.md)

[Restore-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v1.1.4/Restore-AzureRmApiManagement.md)
