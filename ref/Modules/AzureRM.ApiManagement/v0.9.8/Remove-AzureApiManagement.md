---
external help file: Microsoft.Azure.Commands.ApiManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0FFC2103-83F9-42FF-AD20-CBB231C9C476
updated_at: 1/12/2017 1:09 AM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v0.9.8/Remove-AzureApiManagement.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v0.9.8/Remove-AzureApiManagement.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/744a3daf267d93d9084ba9f20bf25d56439bcc7f/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v0.9.8/Remove-AzureApiManagement.md
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

# Remove-AzureApiManagement

## SYNOPSIS
Removes existing API Management.

## SYNTAX

```
Remove-AzureApiManagement -ResourceGroupName <String> -Name <String> [-PassThru] [-Force]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureApiManagement** cmdlet removes an Azure API Management service.

## EXAMPLES

### Example 1: Remove an API Management service
```
PS C:\> Remove-AzureRmApiManagement -ResourceGroupName "ContosoGroup02" -Name "ContosoApi"
```

This command removes the API Management service named ContosoApi.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the of resource group under which the API Management deployment exists.

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
Specifies the name of the API Management deployment that this cmdlet removes.

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

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

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

### -Force
Forces the command to run without asking for user confirmation.

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

[New-AzureApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v0.9.8/New-AzureApiManagement.md)

[Restore-AzureApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v0.9.8/Restore-AzureApiManagement.md)


