---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 80FB7E11-389D-4341-9568-E1A1BC1789DF
updated_at: 11/18/2016 11:58 PM
ms.date: 11/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Set-AzureServiceProjectRole.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Set-AzureServiceProjectRole.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/72a3aea1f1ed5e83ed5c6c8596a219daeabbbe22/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Set-AzureServiceProjectRole.md
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

# Set-AzureServiceProjectRole

## SYNOPSIS
Sets the number of instances or the runtime version of a role.

## SYNTAX

### Instances
```
Set-AzureServiceProjectRole [[-RoleName] <String>] [-Instances] <Int32> [-PassThru] [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

### Runtime
```
Set-AzureServiceProjectRole [[-RoleName] <String>] [-Runtime] <String> [-Version] <String> [-PassThru]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### VMSize
```
Set-AzureServiceProjectRole [[-RoleName] <String>] [-PassThru] [-VMSize] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
powershell_prelim

The **Set-AzureServiceProjectRole** cmdlet sets the number of role instances for the specified role.

## EXAMPLES

### 1: Set instances for a web role
```
PS C:\>Set-AzureServiceProjectRole "MyWebRole" 2
```

Sets the number of instances for the web role named 'MyWebRole1' to 2.

### 2: Set instances for a worker role
```
PS C:\>Set-AzureServiceProjectRole "MyWorkerRole1" 2
```

Sets the role instance count for the worker role named WorkerRole1 to 2.

### 3: Set the runtime version for a role service
```
PS C:\>Set-AzureServiceProjectRole "MyRole1" node 0.6.20
```

Sets the node.exe runtime version for role "MyRole1" to 0.6.20.

## PARAMETERS

### -RoleName
Specifies the name of the web or worker role to be changed.

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

### -Instances
Specifies the number of role instances for the specified web or worker role.

```yaml
Type: Int32
Parameter Sets: Instances
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VMSize
Specifies the virtual machine size of the role.

```yaml
Type: String
Parameter Sets: VMSize
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Runtime
Specifies the runtime to add to the specified role.

```yaml
Type: String
Parameter Sets: Runtime
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Version
Specifies the version of the runtime to add to the role.

```yaml
Type: String
Parameter Sets: Runtime
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

###  
Specifies the size of the virtual machine.

## OUTPUTS

## NOTES

## RELATED LINKS

[Set-AzureServiceProject](xref:ServiceManagement/Azure.Compute/v1.6.1/Set-AzureServiceProject.md)


