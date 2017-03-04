---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
ms.assetid: BF5E3E1A-14B6-4630-8168-628057009D5E
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.3.0/Get-AzureEnvironment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.3.0/Get-AzureEnvironment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.3.0/Get-AzureEnvironment.md
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

# Get-AzureEnvironment

## SYNOPSIS
Gets Azure environments

## SYNTAX

```
Get-AzureEnvironment [[-Name] <String>] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureEnvironment** cmdlet gets the Azure environments that are available to Windows PowerShell.

An Azure environment an independent deployment of Microsoft Azure, such as AzureCloud for global Azure and AzureChinaCloud for Azure operated by 21Vianet in China.
You can also create on-premises Azure environments by using Azure Pack and the WAPack cmdlets.
For more information, see [Azure Pack](http://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx)  (http://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx).

The **Get-AzureEnvironment** cmdlet gets environments from your subscription data file, not from Azure.
If the subscription data file is outdated, run the **Add-AzureAccount** or **Import-PublishSettingsFile** cmdlet to refresh it.

This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

## EXAMPLES

### Example 1: Get all environments
```
PS C:\> Get-AzureEnvironment

EnvironmentName               ServiceEndpoint               ResourceManagerEndpoint       PublishSettingsFileUrl
---------------               ---------------               -----------------------       ----------------------

AzureCloud                    https://management.core.wi... https://management.azure.com/ http://go.microsoft.com/fw... 
AzureChinaCloud               https://management.core.ch... https://not-supported-serv... http://go.microsoft.com/fw...
```

This command gets all environments that are available to Windows PowerShell.

### Example 2: Get an environment by name
```
PS C:\> Get-AzureEnvironment -Name AzureCloud

Name                          : AzureCloud

PublishSettingsFileUrl        : http://go.microsoft.com/fwlink/?LinkID=301775

ServiceEndpoint               : https://management.core.windows.net/

ResourceManagerEndpoint       : https://management.azure.com/

ManagementPortalUrl           : http://go.microsoft.com/fwlink/?LinkId=254433

ActiveDirectoryEndpoint       : https://login.windows.net/

ActiveDirectoryCommonTenantId : common

StorageEndpointSuffix         : core.windows.net

StorageBlobEndpointFormat     : {0}://{1}.blob.core.windows.net/

StorageQueueEndpointFormat    : {0}://{1}.queue.core.windows.net/

StorageTableEndpointFormat    : {0}://{1}.table.core.windows.net/

GalleryEndpoint               : https://gallery.azure.com/
```

This example gets the AzureCloud environment.

### Example 3: Get all properties of all environments
```
PS C:\> Get-AzureEnvironment | ForEach-Object {Get-AzureEnvironment -Name $_.EnvironmentName}
```

This command gets all properties of all environments.

The command uses the **Get-AzureEnvironment** cmdlet to get all Azure environments for this account.
Then, it uses the **Foreach-Object** cmdlet to run a **Get-AzureEnvironment** command with the **Name** parameter on each environment.
The value of the **Name** parameter is the **EnvironmentName** property of each environment.

Without parameters, **Get-AzureEnvironment** gets only selected properties of an environment.

## PARAMETERS

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

### -Name
Gets only the specified environment.
Type the environment name.
The parameter value is case-sensitive.
Wildcard characters are not permitted.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
You can pipe input to this cmdlet by property name, but not by value.

## OUTPUTS

### System.Management.Automation.PSCustomObject
By default, **Get-AzureEnvironment** returns a custom object.

### Microsoft.WindowsAzure.Commands.Utilities.Common.WindowsAzureEnvironment
When you run **Get-AzureEnvironment** with the **Name** parameter, it returns a  **WindowsAzureEnvironment** object.

## NOTES

## RELATED LINKS

[Add-AzureAccount](xref:ServiceManagement/Azure.Profile/v3.3.0/Add-AzureAccount.md)

[Add-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v3.3.0/Add-AzureEnvironment.md)

[Get-AzurePublishSettingsFile](xref:ServiceManagement/Azure.Profile/v3.3.0/Get-AzurePublishSettingsFile.md)

[Import-AzurePublishSettingsFile](xref:ServiceManagement/Azure.Profile/v3.3.0/Import-AzurePublishSettingsFile.md)

[Remove-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v3.3.0/Remove-AzureEnvironment.md)

[Set-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v3.3.0/Set-AzureEnvironment.md)


