---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 337F3CA7-9ACE-4222-ADF3-999B1F754EF2
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVMCustomScriptExtension.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVMCustomScriptExtension.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVMCustomScriptExtension.md
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

# Set-AzureRmVMCustomScriptExtension

## SYNOPSIS
Adds a custom script extension to a virtual machine.

## SYNTAX

### SetCustomScriptExtensionByContainerAndFileNames (Default)
```
Set-AzureRmVMCustomScriptExtension -ContainerName <String> -FileName <String[]> [-StorageAccountName <String>]
 [-StorageEndpointSuffix <String>] [-StorageAccountKey <String>] [-Run <String>] [-Argument <String>]
 [-SecureExecution] [-ResourceGroupName] <String> [-VMName] <String> [-Name <String>]
 [-TypeHandlerVersion <String>] [-Location <String>] [-DisableAutoUpgradeMinorVersion] [-ForceRerun <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### SetCustomScriptExtensionByUriLinks
```
Set-AzureRmVMCustomScriptExtension [-FileUri <String[]>] [-Run <String>] [-Argument <String>]
 [-SecureExecution] [-ResourceGroupName] <String> [-VMName] <String> [-Name <String>]
 [-TypeHandlerVersion <String>] [-Location <String>] [-DisableAutoUpgradeMinorVersion] [-ForceRerun <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmVMCustomScriptExtension** cmdlet adds a custom script Virtual Machine Extension to a virtual machine.
This extension lets you run your own scripts on the virtual machine.

## EXAMPLES

### Example 1: Add a custom script
```
PS C:\>Set-AzureRmVMCustomScriptExtension -ResourceGroupName "ResourceGroup11" -Location "Central US" -VMName "VirtualMachine07" -Name "ContosoTest" -TypeHandlerVersion "1.1" -StorageAccountName "Contoso" -StorageAccountKey <StorageKey> -FileName "ContosoScript.exe" -ContainerName "Scripts"
```

This command adds a custom script to the virtual machine named VirtualMachine07.
The script file is contososcript.exe.

## PARAMETERS

### -ContainerName
Specifies the name of the Azure storage container where this cmdlet stores the script.

```yaml
Type: String
Parameter Sets: SetCustomScriptExtensionByContainerAndFileNames
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -FileName
Specifies the name of the script file.

```yaml
Type: String[]
Parameter Sets: SetCustomScriptExtensionByContainerAndFileNames
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StorageAccountName
Specifies the name of the Azure storage account where this cmdlet stores the script.

```yaml
Type: String
Parameter Sets: SetCustomScriptExtensionByContainerAndFileNames
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StorageEndpointSuffix
Specifies the storage endpoint suffix.

```yaml
Type: String
Parameter Sets: SetCustomScriptExtensionByContainerAndFileNames
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StorageAccountKey
Specifies the key for the Azure storage container.

```yaml
Type: String
Parameter Sets: SetCustomScriptExtensionByContainerAndFileNames
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Run
Specifies the command to use that runs your script.

```yaml
Type: String
Parameter Sets: (All)
Aliases: RunFile, Command

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Argument
Specifies arguments that the script extension passes to the script.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SecureExecution
Indicates that this cmdlet makes sure that the value of the *Run* parameter is not logged on the server or returned to the user by using the GET extension API.
The value of *Run* might contain secrets or passwords to be passed to the script file securely.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group of the virtual machine.

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

### -VMName
Specifies the name of a virtual machine.
This cmdlet adds the custom script extension for the virtual machine that this parameter specifies.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the custom script extension.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ExtensionName

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TypeHandlerVersion
Specifies the version of the extension to use for this virtual machine.
To obtain the version, run the Get-AzureRmVMExtensionImage cmdlet with a value of Microsoft.Compute for the *PublisherName* parameter and VMAccessAgent for the *Type* parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases: HandlerVersion, Version

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Location
Specifies the location of the virtual machine.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DisableAutoUpgradeMinorVersion

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ForceRerun
Indicates that this cmdlet forces a rerun of the same extension configuration on the virtual machine without uninstalling and reinstalling the extension.
The value can be any string different from the current value.

If forceUpdateTag is not changed, updates to public or protected settings are still applied by the handler.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -FileUri
Specifies the URI of the script file.

```yaml
Type: String[]
Parameter Sets: SetCustomScriptExtensionByUriLinks
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

[Get-AzureRmVMCustomScriptExtension](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMCustomScriptExtension.md)

[Remove-AzureRmVMCustomScriptExtension](xref:ResourceManager/AzureRM.Compute/v1.3.4/Remove-AzureRmVMCustomScriptExtension.md)


