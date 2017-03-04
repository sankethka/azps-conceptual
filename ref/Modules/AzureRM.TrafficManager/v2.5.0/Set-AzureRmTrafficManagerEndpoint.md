---
external help file: Microsoft.Azure.Commands.TrafficManager.dll-Help.xml
ms.assetid: 5287D4DB-2709-4A3C-97D5-DB494CEEFD18
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.5.0/Set-AzureRmTrafficManagerEndpoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.5.0/Set-AzureRmTrafficManagerEndpoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.5.0/Set-AzureRmTrafficManagerEndpoint.md
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

# Set-AzureRmTrafficManagerEndpoint

## SYNOPSIS
Updates a Traffic Manager endpoint.

## SYNTAX

```
Set-AzureRmTrafficManagerEndpoint -TrafficManagerEndpoint <TrafficManagerEndpoint> [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmTrafficManagerEndpoint** cmdlet updates an endpoint in Azure Traffic Manager.
This cmdlet updates the settings from a local endpoint object.
You can specify the endpoint object either by using the *TrafficManagerEndpoint* parameter or by using the pipeline.

You can obtain a local object that represents an endpoint by using the Get-AzureRmTrafficManagerEndpoint cmdlet.
Modify the object locally and then use **Set-AzureRmTrafficManagerEndpoint** to commit your changes.

## EXAMPLES

### Example 1: Update an endpoint
```
PS C:\>$TrafficManagerEndpoint = Get-AzureRmTrafficManagerEndpoint -Name "endpoint1" -Type AzureEndpoints -ProfileName "ContosoProfile" -ResourceGroupName "ResourceGroup11"
PS C:\> $TrafficManagerEndpoint.Weight = 20
PS C:\> Set-AzureRmTrafficManagerEndpoint -TrafficManagerEndpoint $TrafficManagerEndpoint
```

The first command gets an Azure Traffic Manager endpoint by using the **Get-AzureRmTrafficManagerEndpoint** cmdlet.
The command stores the endpoint locally in the $TrafficManagerEndpoint variable.

The second command changes that endpoint locally.
This command changes the endpoint weight to 20.

The third command updates the endpoint in Traffic Manager to match the local value in $TrafficManagerEndpoint.

## PARAMETERS

### -TrafficManagerEndpoint
Specifies a local **TrafficManagerEndpoint** object.
This cmdlet updates Traffic Manager to match this local object.

```yaml
Type: TrafficManagerEndpoint
Parameter Sets: (All)
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

### Microsoft.Azure.Commands.Network.TrafficManagerEndpoint
This cmdlet accepts a **TrafficManagerEndpoint** object.

## OUTPUTS

### Microsoft.Azure.Commands.Network.TrafficManagerEndpoint
This cmdlet returns a **TrafficManagerEndpoint** object.

## NOTES

## RELATED LINKS

