---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 5F4F0C97-CFFE-45C9-809C-BDCB047DAD28
updated_at: 1/11/2017 11:09 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.0.0/Add-AzureEnvironment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.0.0/Add-AzureEnvironment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/68d83b5dbd450a91137dc6ad741d942ed49f8f43/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.0.0/Add-AzureEnvironment.md
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

# Add-AzureEnvironment

## SYNOPSIS
Creates an Azure environment.

## SYNTAX

```
Add-AzureEnvironment [-Name] <String> [[-PublishSettingsFileUrl] <String>] [[-ServiceEndpoint] <String>]
 [[-ManagementPortalUrl] <String>] [[-StorageEndpoint] <String>] [[-ActiveDirectoryEndpoint] <String>]
 [[-ResourceManagerEndpoint] <String>] [[-GalleryEndpoint] <String>]
 [[-ActiveDirectoryServiceEndpointResourceId] <String>] [[-GraphEndpoint] <String>]
 [[-AzureKeyVaultDnsSuffix] <String>] [[-AzureKeyVaultServiceEndpointResourceId] <String>]
 [-TrafficManagerDnsSuffix <String>] [-SqlDatabaseDnsSuffix <String>] [-EnableAdfsAuthentication]
 [-AdTenant <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureEnvironment** cmdlet creates a new custom Azure account environment and saves it in your roaming user profile.
The cmdlet returns an object that represents the new environment.
When the command completes, you can use the environment in Windows PowerShell.

An Azure environment an independent deployment of Microsoft Azure, such as AzureCloud for global Azure and AzureChinaCloud for Azure operated by 21Vianet in China.
You can also create on-premises Azure environments by using Azure Pack and the WAPack cmdlets.
For more information, see [Azure Pack](http://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx) (http://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx).

Only the **Name** parameter of this cmdlet is mandatory.
If you omit a parameter, its value is null ($null), and the service that uses that endpoint might not function properly.
To add or change the value of an environment property, use the **Set-AzureEnvironment** cmdlet.

NOTE: Changing your environment can cause your account to fail.
Typically, environments are added only for testing or troubleshooting.

This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

## EXAMPLES

### Example 1: Add an Azure environment
```
PS C:\> Add-AzureEnvironment -Name ContosoEnv -PublishSettingsFileUrl https://contoso.com/fwlink/?LinkID=101 -ServiceEndpoint https://contoso.com/fwlink/?LinkID=102

Name                          : ContosoEnv
PublishSettingsFileUrl        : https://contoso.com/fwlink/?LinkID=101
ServiceEndpoint               : https://contoso.com/fwlink/?LinkID=102
ResourceManagerEndpoint       : 
ManagementPortalUrl           : 
ActiveDirectoryEndpoint       : 
ActiveDirectoryCommonTenantId : 
StorageEndpointSuffix         : 
StorageBlobEndpointFormat     : 
StorageQueueEndpointFormat    : 
StorageTableEndpointFormat    : 
GalleryEndpoint               :
```

This command creates the ContosoEnv Azure environment.

## PARAMETERS

### -Name
Specifies a name for the environment.
This parameter is required.
Do not use the names of the default environments, AzureCloud and AzureChinaCloud.

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

### -PublishSettingsFileUrl
Specifies the URL of the publish settings files for your account.
An Azure publish settings file is an XML file that contains information about your account and a management certificate that allows Windows PowerShell to sign into your Azure account on your behalf.

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

### -ServiceEndpoint
Specifies the URL of the Azure service endpoint.
The Azure service endpoint determines whether your application is managed by the global Azure platform, Azure operated by 21Vianet in China, or a private Azure installation.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ServiceManagement, ServiceManagementUrl

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ManagementPortalUrl
Specifies the URL of the Azure Management Portal in the new environment.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StorageEndpoint
Specifies the default endpoint of storage services in the new environment.

```yaml
Type: String
Parameter Sets: (All)
Aliases: StorageEndpointSuffix

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ActiveDirectoryEndpoint
Specifies the endpoint for Azure Active Directory authentication in the new environment.

```yaml
Type: String
Parameter Sets: (All)
Aliases: AdEndpointUrl, ActiveDirectory, ActiveDirectoryAuthority

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceManagerEndpoint
Specifies the endpoint for Azure Resource Manager data, including data about resource groups associated with the account.
For more information about Azure Resource Manager, see [Azure Resource Manager Cmdlets](http://go.microsoft.com/fwlink/?LinkID=394765) (http://go.microsoft.com/fwlink/?LinkID=394765) and [Using Windows PowerShell with Resource Manager](http://go.microsoft.com/fwlink/?LinkID=394767) (http://go.microsoft.com/fwlink/?LinkID=394767).

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceManager, ResourceManagerUrl

Required: False
Position: 6
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GalleryEndpoint
Specifies the endpoint for the Azure Resource Manager gallery, which stores resource group gallery templates.
For more information about Azure resource groups and gallery templates, see the help topic for [Get-AzureResourceGroupGalleryTemplate](http://go.microsoft.com/fwlink/?LinkID=393052) (http://go.microsoft.com/fwlink/?LinkID=393052).

```yaml
Type: String
Parameter Sets: (All)
Aliases: Gallery, GalleryUrl

Required: False
Position: 7
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ActiveDirectoryServiceEndpointResourceId
Specifies the resource ID of a management API whose access is managed by Azure Active Directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GraphEndpoint

```yaml
Type: String
Parameter Sets: (All)
Aliases: Graph, GraphUrl

Required: False
Position: 9
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AzureKeyVaultDnsSuffix

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AzureKeyVaultServiceEndpointResourceId

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 11
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile

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

### -AdTenant

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

### -EnableAdfsAuthentication

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: OnPremise

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SqlDatabaseDnsSuffix

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

### -TrafficManagerDnsSuffix

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
You can pipe input to this cmdlet by property name, but not by value.

## OUTPUTS

### Microsoft.WindowsAzure.Commands.Utilities.Common.WindowsAzureEnvironment

## NOTES

## RELATED LINKS

[Get-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v3.0.0/Get-AzureEnvironment.md)

[Remove-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v3.0.0/Remove-AzureEnvironment.md)

[Set-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v3.0.0/Set-AzureEnvironment.md)


