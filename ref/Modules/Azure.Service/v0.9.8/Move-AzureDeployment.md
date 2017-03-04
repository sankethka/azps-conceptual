---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 1E25C69D-0D37-4285-81A6-CEEDE9208ACE
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Move-AzureDeployment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Move-AzureDeployment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Move-AzureDeployment.md
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
Move-AzureDeployment [-ServiceName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Move-AzureDeployment** cmdlet swaps the virtual IP addresses of deployments in production and staging environments.
This cmdlet swaps a deployment that currently runs in the staging environment to the production environment, and a deployment that runs in the production environment to the staging environment.
If there is a deployment in the staging environment and no deployment in the production environment, the cmdlet moves the deployment to production.
If there is a deployment in the production environment and no deployment in the staging environment, the cmdlet fails.

## EXAMPLES

### Example 1: Swap deployments for a service
```
PS C:\>Move-AzureDeployment -ServiceName "ContosoService"
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

### ManagementOperationContext

## NOTES

## RELATED LINKS

[Get-AzureDeployment](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureDeployment.md)

[Get-AzureDeploymentEvent](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureDeploymentEvent.md)

[New-AzureDeployment](xref:ServiceManagement/Azure.Service/v0.9.8/New-AzureDeployment.md)

[Remove-AzureDeployment](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureDeployment.md)

[Set-AzureDeployment](xref:ServiceManagement/Azure.Service/v0.9.8/Set-AzureDeployment.md)


