---
external help file: Microsoft.Azure.Commands.Cdn.dll-Help.xml
ms.assetid: 1A84AF77-1AEF-4FD0-9FAA-D195B361FCEB
online version: 
schema: 2.0.0
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.3.0/Set-AzureRmCdnEndpoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.3.0/Set-AzureRmCdnEndpoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.Cdn/v2.3.0/Set-AzureRmCdnEndpoint.md
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

# Set-AzureRmCdnEndpoint

## SYNOPSIS
Updates a CDN endpoint.

## SYNTAX

```
Set-AzureRmCdnEndpoint -CdnEndpoint <PSEndpoint> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmCdnEndpoint** cmdlet updates an Azure Content Delivery Network (CDN) endpoint.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -CdnEndpoint
Specifies the endpoint that this cmdlet updates.

```yaml
Type: PSEndpoint
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.3.0/Get-AzureRmCdnEndpoint.md)

[New-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.3.0/New-AzureRmCdnEndpoint.md)

[Remove-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.3.0/Remove-AzureRmCdnEndpoint.md)

[Start-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.3.0/Start-AzureRmCdnEndpoint.md)

[Stop-AzureRmCdnEndpoint](xref:ResourceManager/AzureRM.Cdn/v2.3.0/Stop-AzureRmCdnEndpoint.md)


