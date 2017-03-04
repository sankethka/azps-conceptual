---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 96E3B440-0BC6-4C20-B870-0859B40E50A0
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureService.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureService.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureService.md
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

# Get-AzureService

## SYNOPSIS
Returns an object with information about the cloud services for the current subscription.

## SYNTAX

```
Get-AzureService [[-ServiceName] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureService** cmdlet returns a list object with all of the Azure cloud services associated with the current subscription.
If you specify the *ServiceName* parameter, **Get-AzureService** returns information on only the matching service.

## EXAMPLES

### Example 1: Get information about all services
```
PS C:\> Get-AzureService
```

This command returns an object that contains information about all of the Azure services associated with the current subscription.

### Example 2: Get information about a specified service
```
PS C:\> Get-AzureService -ServiceName $MySvc
```

This command returns information about the $MySvc service.

### Example 3: Display available methods and properties
```
PS C:\> Get-AzureService | Get-Member
```

This command displays the properties and methods that are available from the **Get-AzureService** cmdlet.

## PARAMETERS

### -ServiceName
Specifies the name of a service on which to return information.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
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

### HostedServiceContext

## NOTES

## RELATED LINKS

[New-AzureService](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureService.md)

[Set-AzureService](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureService.md)


