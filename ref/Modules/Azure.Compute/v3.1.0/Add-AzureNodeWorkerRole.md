---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
ms.assetid: 7190C668-6A0C-4E1D-9B5A-0CEEF53E3F85
online version: 
schema: 2.0.0
updated_at: 1/5/2017 11:58 PM
ms.date: 1/5/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Add-AzureNodeWorkerRole.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Add-AzureNodeWorkerRole.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/708031d6bfe230ef535b9f1da2a6bf5f01dca5a2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Add-AzureNodeWorkerRole.md
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

# Add-AzureNodeWorkerRole

## SYNOPSIS
Creates the required files and folders for a Node.js application to be hosted in the cloud via node.exe

## SYNTAX

```
Add-AzureNodeWorkerRole [[-Name] <String>] [[-Instances] <Int32>] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

The **Add-AzureNodeWorkerRole** cmdlet creates the required files and folders, sometimes referred to as scaffolding, for a Node.js application to be hosted in the cloud via node.exe.

## EXAMPLES

### Example 1: Single instance worker role
```
PS C:\> Add-AzureWorkerRole MyWorkerRole
```

This example adds scaffolding for a single worker role named **MyWorkerRole** to the current application.

### Example 2: Multiple instance worker role
```
PS C:\> Add-AzureNodeWorkerRole MyWorkerRole -I 2
```

This example adds scaffolding for a single worker role named **MyWorkerRole** to the current application, with a role instance count of 2.

## PARAMETERS

### -Name
Specifies the name of the worker role.
The value determines the folder name that contains the scaffolding for the node.js service hosted in the worker role.
Default is WorkerRole1.

```yaml
Type: String
Parameter Sets: (All)
Aliases: n

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Instances
Specifies the number of role instances for this worker role.
Default is 1.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: i

Required: False
Position: 1
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureNodeWebRole](xref:ServiceManagement/Azure.Compute/v3.1.0/Add-AzureNodeWebRole.md)

[New-AzureServiceProject](xref:ServiceManagement/Azure.Compute/v3.1.0/New-AzureServiceProject.md)


