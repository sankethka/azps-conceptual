---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 554CF482-5AEE-4A3D-B808-5740D195926D
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureDns.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureDns.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureDns.md
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

# Get-AzureDns

## SYNOPSIS
Gets the DNS settings for an Azure deployment.

## SYNTAX

```
Get-AzureDns [-DnsSettings <DnsSettings>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureDns** cmdlet gets the DNS settings for an Azure deployment.
The cmdlet returns the friendly name and IP address of the DNS server in a DNS settings object.

## EXAMPLES

### Example 1: Get DNS settings
```
PS C:\> Get-AzureDeployment -ServiceName "ContosoService" -Slot "Production" | Get-AzureDNS
```

This command uses the Get-AzureDeployment cmdlet to get the production deployment of the service named ContosoService.
The command passes that object to the current cmdlet by using the pipeline operator.
The current cmdlet gets the DNS settings.

## PARAMETERS

### -DnsSettings
Specifies a **DnsSettings** object.

```yaml
Type: DnsSettings
Parameter Sets: (All)
Aliases: InputObject

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

## NOTES

## RELATED LINKS

[Add-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/Add-AzureDns.md)

[Get-AzureDeployment](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureDeployment.md)

[New-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureDns.md)

[Remove-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureDns.md)

[Set-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureDns.md)


