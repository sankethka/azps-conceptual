---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A533AEFA-781D-402A-B016-333B32361E71
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Move-AzureDeployment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Move-AzureDeployment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Move-AzureDeployment.md
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

# Move-AzureDeployment

## SYNOPSIS
Swaps deployments between production and staging.

## SYNTAX

```
Move-AzureDeployment [-ServiceName] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Move-AzureDeployment** cmdlet swaps the virtual IP addresses of deployments in production and staging environments.
This cmdlet swaps a deployment that currently runs in the staging environment to the production environment, and a deployment that runs in the production environment to the staging environment.
If there is a deployment in the staging environment and no deployment in the production environment, the cmdlet moves the deployment to production.
If there is a deployment in the production environment and no deployment in the staging environment, the cmdlet fails.

## EXAMPLES

### Example 1: Swap deployments for a service
```
PS C:\> Move-AzureDeployment -ServiceName "ContosoService"
```

This command swaps the deployments of the service named ContosoService between the production and staging environments.

## PARAMETERS

### -ServiceName
Specifies the name of the service for which this cmdlet swaps production and staging deployments.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
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

### ManagementOperationContext

## NOTES

## RELATED LINKS

[Get-AzureDeployment](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureDeployment.md)

[Get-AzureDeploymentEvent](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureDeploymentEvent.md)

[New-AzureDeployment](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureDeployment.md)

[Remove-AzureDeployment](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureDeployment.md)

[Set-AzureDeployment](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureDeployment.md)


