---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 19376209-6C0D-46E0-AD98-B8E2F13C0893
updated_at: 10/31/2016 9:17 PM
ms.date: 10/31/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Remove-AzureService.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Remove-AzureService.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/70d99f0e924efe152eb73454f7898f92d5a5db64/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Remove-AzureService.md
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

# Remove-AzureService

## SYNOPSIS
Removes the current cloud service.

## SYNTAX

```
Remove-AzureService [[-ServiceName] <String>] [-Force] [-PassThru] [-DeleteAll] [-Profile <AzureSMProfile>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
powershell_prelim

The **Remove-AzureService** cmdlet stops and removes the current cloud service, or the service matching the specified service and subscription name.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ServiceName
Specifies the name of the service to be removed.
If the command is run from a service directory and no name is specified, uses the current service name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
Removes the service without prompting for confirmation.

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

### -DeleteAll
Specify to remove the service and the underlying disk blob(s).

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

### -PassThru

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
In-memory profile.

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

[Publish-AzureServiceProject](xref:ServiceManagement/Azure.Compute/v1.6.1/Publish-AzureServiceProject.md)

[Stop-AzureService](xref:ServiceManagement/Azure.Compute/v1.6.1/Stop-AzureService.md)

[Start-AzureService](xref:ServiceManagement/Azure.Compute/v1.6.1/Start-AzureService.md)


