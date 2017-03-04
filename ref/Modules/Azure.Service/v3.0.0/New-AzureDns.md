---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 22FE3508-9EB3-441D-88A3-70C2251F78B6
updated_at: 1/11/2017 7:45 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureDns.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureDns.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/89f87b90cfeff351b6e775a4dc30d353f5e08a1a/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureDns.md
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

# New-AzureDns

## SYNOPSIS
Creates an Azure DNS settings object.

## SYNTAX

```
New-AzureDns [-Name] <String> [-IPAddress] <String> [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureDns** cmdlet creates an Azure DNS settings object.
You can use a DNS settings object when you create a virtual machine by using the **New-AzureVM** cmdlet.

## EXAMPLES

### Example 1: Create a DNS settings object
```
PS C:\> $Dns = New-AzureDns -Name "Dns01" -IPAddress "10.1.2.4"
```

This command creates an Azure DNS settings object.
The DNS server has the specified address and the friendly name Dns01.
The command stores the object in the $Dns variable for use by the **New-AzureVM** cmdlet.

## PARAMETERS

### -Name
Specifies a friendly name for the DNS server.
This name is not necessarily a fully qualified domain name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IPAddress
Specifies the IP address of the DNS server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
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

[Add-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/Add-AzureDns.md)

[Get-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureDns.md)

[New-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureVM.md)

[Remove-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureDns.md)

[Set-AzureDns](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureDns.md)


