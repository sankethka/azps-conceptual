---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 292C2890-2148-4E3A-B4A1-16D46181B78F
updated_at: 1/11/2017 7:45 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Move-AzureVirtualNetwork.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Move-AzureVirtualNetwork.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/89f87b90cfeff351b6e775a4dc30d353f5e08a1a/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Move-AzureVirtualNetwork.md
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

# Move-AzureVirtualNetwork

## SYNOPSIS
Migrates a virtual network to the Azure Resource Manager stack.

## SYNTAX

### ValidateMigrationParameterSet
```
Move-AzureVirtualNetwork [-VirtualNetworkName] <String> [-Validate] [-Profile <AzureSMProfile>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### AbortMigrationParameterSet
```
Move-AzureVirtualNetwork [-VirtualNetworkName] <String> [-Abort] [-Profile <AzureSMProfile>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### CommitMigrationParameterSet
```
Move-AzureVirtualNetwork [-VirtualNetworkName] <String> [-Commit] [-Profile <AzureSMProfile>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### PrepareMigrationParameterSet
```
Move-AzureVirtualNetwork [-VirtualNetworkName] <String> [-Prepare] [-Profile <AzureSMProfile>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Move-AzureVirtualNetwork** cmdlet migrates a virtual network to a resource group in the Azure Resource Manager stack.

## EXAMPLES

### Example 1: Prepare virtual network migration
```
PS C:\> Move-AzureVirtualNetwork -Prepare -VirtualNetworkName "ContosoVNET"
```

This command prepares the virtual network named ContosoVNET for migration to the Azure Resource Manager stack.

### Example 2: Start virtual network migration
```
PS C:\> Move-AzureVirtualNetwork -Commit -VirtualNetworkName "ContosoVNET"
```

This command starts migration of the virtual network named ContosoVNET to the Azure Resource Manager stack.

### Example 3: Validate virtual network migration
```
PS C:\> Move-AzureVirtualNetwork -Validate -VirtualNetworkName "ContosoVNET"
```

This command validates migration for the virtual network named ContosoVNET to the Azure Resource Manager stack.

## PARAMETERS

### -VirtualNetworkName
Specifies the name of the Virtual Network to migrate.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Validate
Specifies that this cmdlet validates the virtual network for migration.

```yaml
Type: SwitchParameter
Parameter Sets: ValidateMigrationParameterSet
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
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

### -Abort
Indicates that this cmdlet cancels the virtual network migration.

```yaml
Type: SwitchParameter
Parameter Sets: AbortMigrationParameterSet
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Commit
Indicates that this cmdlet starts the virtual network migration.

```yaml
Type: SwitchParameter
Parameter Sets: CommitMigrationParameterSet
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prepare
Indicates that this cmdlet prepares the virtual network for migration.

```yaml
Type: SwitchParameter
Parameter Sets: PrepareMigrationParameterSet
Aliases: 

Required: True
Position: 0
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

[Move-AzureNetworkSecurityGroup](xref:ServiceManagement/Azure.Service/v3.0.0/Move-AzureNetworkSecurityGroup.md)

[Move-AzureReservedIP](xref:ServiceManagement/Azure.Service/v3.0.0/Move-AzureReservedIP.md)

[Move-AzureRouteTable](xref:ServiceManagement/Azure.Service/v3.0.0/Move-AzureRouteTable.md)

[Move-AzureService](xref:ServiceManagement/Azure.Service/v3.0.0/Move-AzureService.md)

[Move-AzureStorageAccount](xref:ServiceManagement/Azure.Service/v3.0.0/Move-AzureStorageAccount.md)


