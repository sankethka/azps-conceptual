---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0CB742C6-F301-409B-A34C-A793EDA6F308
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Switch-AzureMode.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Switch-AzureMode.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Switch-AzureMode.md
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

# Switch-AzureMode

## SYNOPSIS
Switches between the Azure and Azure Resource Manager modules

## SYNTAX

```
Switch-AzureMode [-Name] <String> [-Global] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Switch-AzureMode** cmdlet switches between the Azure and Azure Resource Manager (AzureResourceManager) modules.
These modules are not designed to be used in the same session.
To determine which module is in your current session, use the Get-Module cmdlet.

NOTE: The **AzureResourceManager** module is currently in preview.
It might not provide the same management capabilities as the Azure module.

Beginning in version 0.8,0, the Azure PowerShell installation includes both Azure modules and Azure Profile, a module of commands common to both modules.
When you use the Azure PowerShell cmdlets, the Azure and Azure Profile modules are imported into the session by default.
To remove the Azure module from the session and import the Azure Resource Manager module, use **Switch-AzureMode**.
And, to switch back to the Azure module, just use **Switch-AzureMode** again.

The Azure module includes cmdlets that help you to manage your Azure account in the traditional way.
The cmdlets get, create, change, and remove individual resources such as storage accounts, virtual machines, SQL databases, web sites, media services, and cloud services.

The new Azure Resource Manager module, introduced in Azure PowerShell version 0.8.0, lets you manage your resources in an entirely new way.
Instead of creating individual resources and trying to use them together, begin by imagining the service you want to create, such as a web portal, a blog, a photo gallery, a commerce site, or a wiki.
Select a resource group template, including one of dozens in the Azure template gallery, or create your own.
Each template provides a model of a complex service, complete with the resources that you need to support the service.
Then use the template to create a resource group and its resources, and deploy and manage the related resources as a unit.

You can use **Switch-AzureMode** to switch between Azure modules as often as you like.
To set an Azure module as the default for all sessions, use the Global parameter when switching between modes.

## EXAMPLES

### Example 1: Switch to the Azure Resource Manager module
```
PS C:\>Switch-AzureMode -Name AzureResourceManager
PS C:\>Switch-AzureMode -Name AzureServiceManagement
```

This command shows you how to switch between modules.
The first command uses the **Switch-AzureMode** cmdlet to switch to the Azure Resource Manager module.
The second command uses the **Switch-AzureMode** cmdlet to switch back to the Azure module.

When you import either module, the AzureProfile module, which includes commands common to both modules, including Add-AzureAccount, Get-AzureSubscription, and Switch-AzureMode, is imported, too.

### Example 2: Switch all sessions to the Azure Resource Manager module
```
PS C:\>Switch-AzureMode -Name AzureResourceManager -Global
```

This command uses the Global parameter of Switch-AzureMode to switch all Windows Azure PowerShell sessions to the Azure Resource Manager module.
If you close this session and open an new one, the Azure Resource Manager module is imported by default.

The **Global** parameter requires administrator permissions.
To run this command, start Windows PowerShell with the "Run as administrator" option.

## PARAMETERS

### -Name
Switches to the specified module.
To switch to the Azure Resource Manager  module, type **AzureResourceManager**.
To switch to the Azure module, type **AzureServiceManagement**.
This parameter is required.

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

### -Global
Switches all Windows PowerShell session to the specified Azure module.
Use this parameter to save your module selection for other sessions.
This parameter is optional.
By default, the switch affects only the current session.

This parameter requires administrator permissions.
To use this parameter, start Windows PowerShell with the "Run as administrator" option.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
This parameter requires administrator permissions.
To use this parameter, start Windows PowerShell with the "Run as administrator" option.

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

### None
You cannot pipe input to this cmdlet.

## OUTPUTS

### None
This cmdlet does not generate any output.

## NOTES
* **Switch-AzureMode** is introduced in version 0.8.0 of the Azure modules. To get the version of your module, type: (Get-Module \<ModuleName\>).Version
* The **Switch-AzureMode** cmdlet is exported by the AzureProfile module. The AzureProfile module is compatible with both the Azure and AzureResourceManager modules and is imported automatically whenever either module is imported.

## RELATED LINKS

[Azure Resource Manager Cmdlets](http://go.microsoft.com/fwlink/?LinkID=394765)

[Azure Service Management Cmdlets](http://go.microsoft.com/fwlink/?LinkID=396348)

[Azure Profile Cmdlets](xref:ServiceManagement/Azure.Profile/v0.9.8/Azure.Profile.md)


