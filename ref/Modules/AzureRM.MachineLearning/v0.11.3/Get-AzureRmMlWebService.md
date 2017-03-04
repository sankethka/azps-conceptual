---
external help file: Microsoft.Azure.Commands.MachineLearning.dll-Help.xml
ms.assetid: 0521C17C-9C42-4D0D-AF35-EFDD5AECC958
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.MachineLearning/v0.11.3/Get-AzureRmMlWebService.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.MachineLearning/v0.11.3/Get-AzureRmMlWebService.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.MachineLearning/v0.11.3/Get-AzureRmMlWebService.md
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

# Get-AzureRmMlWebService

## SYNOPSIS
Gets summary information about one or more web services.

## SYNTAX

```
Get-AzureRmMlWebService [-ResourceGroupName <String>] [-Name <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmMlWebService** cmdlet gets summary information about a specific web service resource, or a collection of web services within the current subscription or resource group.

To determine the resource group name of an existing web service, run the **Get-AzureRmMlWebService** cmdlet to display the web services in your subscription.
Locate the web service, and then look at its web service ID.
The name of the resource group is the fourth element in the ID, just after the **resourceGroups** element.
In the following example the resource group name is **Default-MachineLearning-SouthCentralUS**.

`Properties : Microsoft.Azure.Management.MachineLearning.WebServices.Models.WebServicePropertiesForGraph`
`Id         : /subscriptions/\<subscription ID\>/resourceGroups/Default-MachineLearning-SouthCentralUS/providers/Microsoft.MachineLearning/webServices/Sample5TrainTest.2016.7.22.15.46.31.322`
`Name       : Sample5TrainTest.2016.7.22.15.46.31.322`
`Location   : South Central US`
`Type       : Microsoft.MachineLearning/webServices`
`Tags       : {}`

Alternatively, to determine the resource group name of an existing web service, log on to the Microsoft Azure Machine Learning Web Services portal.
Select the web service.
The resource group name is the fifth element of the URL of the web service, just after the **resourceGroups** element.
In the following example the resource group name is **Default-MachineLearning-SouthCentralUS**.

`https://services.azureml.net/subscriptions/\<subcription ID\>/resourceGroups/Default-MachineLearning-SouthCentralUS/providers/Microsoft.MachineLearning/webServices/Sample5TrainTest.2016.7.22.15.46.31.322`

## EXAMPLES

### Example 1: Get information from a specific web service
```
PS C:\>Get-AzureRmMlWebService -ResourceGroupName "RG001" -Name "WebService003"
```

This command gets information from the web service named WebService003 that belongs to the resource group named RG001.

### Example 2: Get all web service resources in the current subscription
```
PS C:\>Get-AzureRmMlWebService
```

This command gets information about all web services in the current subscription.

### Example 3: Get all web services in the current subscription that belong to a specific resource group
```
PS C:\>Get-AzureRmMlWebService -ResourceGroupName "RG005"
```

This command gets all web services in the current subscription that belong to the resource group named RG005.

## PARAMETERS

### -Name
Specifies the name of the specific web service resource details that this cmdlet gets.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that the web service resource or resources belong to.

```yaml
Type: String
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
* Keywords: azure, azurerm, arm, resource, management, manager, machine, machine learning, azureml

## RELATED LINKS

[Export-AzureRmMlWebService](xref:ResourceManager/AzureRM.MachineLearning/v0.11.3/Export-AzureRmMlWebService.md)

[Import-AzureRmMlWebService](xref:ResourceManager/AzureRM.MachineLearning/v0.11.3/Import-AzureRmMlWebService.md)

[New-AzureRmMlWebService](xref:ResourceManager/AzureRM.MachineLearning/v0.11.3/New-AzureRmMlWebService.md)

[Remove-AzureRmMlWebService](xref:ResourceManager/AzureRM.MachineLearning/v0.11.3/Remove-AzureRmMlWebService.md)

[Update-AzureRmMlWebService](xref:ResourceManager/AzureRM.MachineLearning/v0.11.3/Update-AzureRmMlWebService.md)


