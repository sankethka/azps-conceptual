---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
ms.assetid: 6185C6BA-460E-4EEA-B1EF-CD67629AA75E
online version: 
schema: 2.0.0
updated_at: 1/4/2017 10:41 PM
ms.date: 1/4/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Set-AzureSubscription.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Set-AzureSubscription.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/379557ccffccbfa288c09f905962979254b5a124/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Set-AzureSubscription.md
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

# Set-AzureSubscription

## SYNOPSIS
Creates or changes an Azure subscription.

## SYNTAX

### UpdateSubscriptionByIdParameterSetName (Default)
```
Set-AzureSubscription -SubscriptionId <String> [[-Certificate] <X509Certificate2>] [-ServiceEndpoint <String>]
 [-ResourceManagerEndpoint <String>] [-CurrentStorageAccountName <String>] [-Context <AzureStorageContext>]
 [-Environment <String>] [-PassThru] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### AddSubscriptionParameterSetName
```
Set-AzureSubscription [-SubscriptionName] <String> -SubscriptionId <String> [-Certificate] <X509Certificate2>
 [-ServiceEndpoint <String>] [-ResourceManagerEndpoint <String>] [-CurrentStorageAccountName <String>]
 [-Context <AzureStorageContext>] [-Environment <String>] [-PassThru] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### UpdateSubscriptionByNameParameterSetName
```
Set-AzureSubscription [-SubscriptionName] <String> [[-Certificate] <X509Certificate2>]
 [-ServiceEndpoint <String>] [-ResourceManagerEndpoint <String>] [-CurrentStorageAccountName <String>]
 [-Context <AzureStorageContext>] [-Environment <String>] [-PassThru] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureSubscription** cmdlet establishes and changes the properties of an Azure subscription object.
You can use this cmdlet to work in an Azure subscription that is not your default subscription or to change your current storage account.
For information about current and default subscriptions, see the **Select-AzureSubscription** cmdlet.

This cmdlet operates on an Azure subscription object, not your actual Azure subscription.
To create and provision an Azure subscription, visit the [Azure Portal](https://azure.microsoft.com/) (https://azure.microsoft.com/).

This cmdlet changes the data in the subscription data file that you create when you use the **Add-AzureAccount** or **Import-AzurePublishSettingsFile** cmdlet to add an Azure account to Windows PowerShell.

This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

## EXAMPLES

### Example 1: Change an existing subscription1
```
C:\PS> $thumbprint = <Thumbprint-2>
C:\PS> $differentCert = Get-Item cert:\\CurrentUser\My\$thumbprint 
C:\PS> Set-AzureSubscription -SubscriptionName ContosoEngineering -Certificate $differentCert
```

This example changes the certificate for the subscription named ContosoEngineering.

### Example 2: Change the service endpoint
```
C:\PS> Set-AzureSubscription -SubscriptionName ContosoEngineering -ServiceEndpoint "https://management.core.contoso.com"
```

This command adds or changes a custom service endpoint for the ContosoEngineering subscription.

### Example 3: Clear property values
```
C:\PS> Set-AzureSubscription -SubscriptionName ContosoEngineering -Certificate $null -ResourceManagerEndpoint $Null
```

This command sets the values of the Certificate and ResourceManagerEndpoint properties to null ($Null).
This clears the values of those properties without changing other settings.

### Example 4: Use an alternate subscription data file
```
C:\PS> Set-AzureSubscription -SubscriptionName ContosoFinance -SubscriptionDataFile C:\Azure\SubscriptionData.xml -CurrentStorageAccount ContosoStorage01
```

This command changes the current storage account of the ContosoFinance subscription to ContosoStorage01.
The command uses the **SubscriptionDataFile** parameter to change the data in the C:\Azure\SubscriptionData.xml subscription data file.
By default, **Set-AzureSubscription** uses the default subscription data file in your roaming user profile.

## PARAMETERS

### -SubscriptionName
```yaml
Type: String
Parameter Sets: AddSubscriptionParameterSetName, UpdateSubscriptionByNameParameterSetName
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Certificate
```yaml
Type: X509Certificate2
Parameter Sets: UpdateSubscriptionByIdParameterSetName, UpdateSubscriptionByNameParameterSetName
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: X509Certificate2
Parameter Sets: AddSubscriptionParameterSetName
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServiceEndpoint
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

### -ResourceManagerEndpoint
Specifies the endpoint for Azure Resource Manager data, including data about resource groups associated with the account.
For more information about Azure Resource Manager, see [Azure Resource Manager Cmdlets](http://go.microsoft.com/fwlink/?LinkID=394765)  (http://go.microsoft.com/fwlink/?LinkID=394765) and [Using Windows PowerShell with Resource Manager](http://go.microsoft.com/fwlink/?LinkID=394767)  (http://go.microsoft.com/fwlink/?LinkID=394767).

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

### -CurrentStorageAccountName
```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Context
```yaml
Type: AzureStorageContext
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Environment
Specifies an Azure environment.

An Azure environment an independent deployment of Microsoft Azure, such as AzureCloud for global Azure and AzureChinaCloud for Azure operated by 21Vianet in China.
You can also create on-premises Azure environments by using Azure Pack and the WAPack cmdlets.
For more information, see [Azure Pack](http://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx)  (http://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns $True if the command succeeds and $False if it fails.
By default, this cmdlet does not return any output.
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

### -SubscriptionId
```yaml
Type: String
Parameter Sets: UpdateSubscriptionByIdParameterSetName, AddSubscriptionParameterSetName
Aliases: 

Required: True
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

### None or System.Boolean
When you use the *PassThru* parameter, this cmdlet returns a Boolean value.
By default, this cmdlet does not return any output.

## NOTES

## RELATED LINKS

[Add-AzureAccount](xref:ServiceManagement/Azure.Profile/v3.1.0/Add-AzureAccount.md)

[Get-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Get-AzureSubscription.md)

[Import-AzurePublishSettingsFile](xref:ServiceManagement/Azure.Profile/v3.1.0/Import-AzurePublishSettingsFile.md)

[Remove-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Remove-AzureSubscription.md)

[Select-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Select-AzureSubscription.md)


