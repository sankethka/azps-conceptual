---
external help file: Microsoft.Azure.Commands.ApiManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 981D3741-0B91-431F-A7B2-53DC9645B3AB
updated_at: 1/12/2017 1:09 AM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v0.9.8/New-AzureApiManagement.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v0.9.8/New-AzureApiManagement.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/744a3daf267d93d9084ba9f20bf25d56439bcc7f/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v0.9.8/New-AzureApiManagement.md
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

# New-AzureApiManagement

## SYNOPSIS
Creates an API Management deployment.

## SYNTAX

```
New-AzureApiManagement -ResourceGroupName <String> -Name <String> -Location <String> -Organization <String>
 -AdminEmail <String> [-Sku <PsApiManagementSku>] [-Capacity <Int32>]
 [-Tags <System.Collections.Generic.Dictionary`2[System.String,System.String]>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRMApiManagement** cmdlet creates an API Management deployment in Azure API Management.

## EXAMPLES

### Example 1: Create at Developer tier API Management service
```
PS C:\> New-AzureApiManagement -ResourceGroupName "ContosoGroup02" -Name "ContosoApi" -Location "Central US" -Organization "Contoso" -AdminEmail "admin@contoso.com"
```

This command creates a Developer tier API Management service.
The command specifies the organization and the administrator address.
The command does not specify the SKU parameter.
Therefore, the cmdlet uses the default value of Developer.

### Example 2: Create a Standard tier service that has three units
```
PS C:\> New-AzureApiManagement -ResourceGroupName "ContosoGroup02 -Name "ContosoApi" -Location "Central US" -Organization "Contoso" -AdminEmail "admin@contoso.com" -Sku Standard -Capacity 3
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
To obtain valid locations, use the Get-AzureLocation cmdlet.

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

The default value is Developer.

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

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureProfile
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

[Backup-AzureApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v0.9.8/Backup-AzureApiManagement.md)

[Get-AzureApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v0.9.8/Get-AzureApiManagement.md)

[Remove-AzureApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v0.9.8/Remove-AzureApiManagement.md)

[Restore-AzureApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v0.9.8/Restore-AzureApiManagement.md)


