---
external help file: Microsoft.Azure.Commands.MachineLearning.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2B604A09-F3CB-483F-A783-34A0D8B2C624
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.MachineLearning/v0.10.0/Get-AzureRmMlWebServiceKeys.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.MachineLearning/v0.10.0/Get-AzureRmMlWebServiceKeys.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.MachineLearning/v0.10.0/Get-AzureRmMlWebServiceKeys.md
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

# Get-AzureRmMlWebServiceKeys

## SYNOPSIS
Gets the web service keys from a web service.

## SYNTAX

### Get an Azure ML web service's access keys given its name and resource group.
```
Get-AzureRmMlWebServiceKeys -ResourceGroupName <String> -Name <String> [<CommonParameters>]
```

### Get the access kesy for the given web service instance.
```
Get-AzureRmMlWebServiceKeys -MlWebService <WebService> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmMlWebServiceKeys** cmdlet gets the web service keys for an Azure Machine Learning web service runtime APIs.

To determine the resource group name of an existing web service, run the Get-AzureRmMlWebService cmdlet to display the web services in your subscription.
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

### Example 1: Get access keys for a web service specified by resource group and name
```
PS C:\>Get-AzureRmMlWebServiceKeys -ResourceGroupName "RG004" -Name "Webservice004"
```

This command gets access keys for the web service named Webservice004 that belongs to the resource group named RG004.

### Example 2: Get access keys for a web service instance
```
PS C:\>Get-AzureRmMlWebServiceKeys -MlWebService $MlService
```

This command gets the access keys for the web service instance that is defined in the variable named $MlService.

## PARAMETERS

### -ResourceGroupName
Specifies the resource group that the web service belongs to.

```yaml
Type: String
Parameter Sets: Get an Azure ML web service's access keys given its name and resource group.
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the web service resource that this cmdlet gets the access keys.

```yaml
Type: String
Parameter Sets: Get an Azure ML web service's access keys given its name and resource group.
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MlWebService
Specifies the name of the web service for which this cmdlet gets access keys.

```yaml
Type: WebService
Parameter Sets: Get the access kesy for the given web service instance.
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
* Keywords: azure, azurerm, arm, resource, management, manager, machine, machine learning, azureml

## RELATED LINKS

[Azure Machine Learning Cmdlets](xref:ResourceManager/AzureRM.MachineLearning/v0.10.0/AzureRM.MachineLearning.md)

[Get-AzureRmMlWebService](xref:ResourceManager/AzureRM.MachineLearning/v0.10.0/Get-AzureRmMlWebService.md)


