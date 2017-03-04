---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
ms.assetid: 7A45DCAD-88DC-40F0-BBF7-0F531A571CA6
online version: 
schema: 2.0.0
updated_at: 1/4/2017 10:41 PM
ms.date: 1/4/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Select-AzureSubscription.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Select-AzureSubscription.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/379557ccffccbfa288c09f905962979254b5a124/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Select-AzureSubscription.md
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

# Select-AzureSubscription

## SYNOPSIS
Changes the current and default Azure subscriptions.

## SYNTAX

### SelectSubscriptionByNameParameterSet (Default)
```
Select-AzureSubscription [-SubscriptionName] <String> [[-Account] <String>] [-Current] [-PassThru]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### SelectDefaultSubscriptionByNameParameterSet
```
Select-AzureSubscription [-SubscriptionName] <String> [[-Account] <String>] [-Default] [-PassThru]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### SelectSubscriptionByIdParameterSet
```
Select-AzureSubscription [-SubscriptionId] <String> [[-Account] <String>] [-Current] [-PassThru]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### SelectDefaultSubscriptionByIdParameterSet
```
Select-AzureSubscription [-SubscriptionId] <String> [[-Account] <String>] [-Default] [-PassThru]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### NoCurrentSubscriptionParameterSet
```
Select-AzureSubscription [[-Account] <String>] [-NoCurrent] [-PassThru] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### NoDefaultSubscriptionParameterSet
```
Select-AzureSubscription [[-Account] <String>] [-NoDefault] [-PassThru] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Select-AzureSubscription** cmdlet sets and clears the current and default Azure subscriptions.

The "current subscription" is the subscription that is used by default in the current Windows PowerShell session.
The "default subscription" is used by default in all Windows PowerShell sessions.
The "current subscription" label lets you specify a different subscription to be used by default for the current session without changing the "default subscription" for all other sessions.

The "default" subscription designation is saved in your subscription data file.
The session-specific "current" designation is not saved.

This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

## EXAMPLES

### Example 1: Set the current subscription
```
C:\PS> Select-AzureSubscription -Current -SubscriptionName ContosoEngineering
```

This command makes "ContosoEngineering" the current subscription.

### Example 2: Set the default description
```
C:\PS> Select-AzureSubscription -Default -SubscriptionName ContosoFinance -SubscriptionDataFile "C:\subs\MySubscriptions.xml"
```

This command changes the default subscription to "ContosoFinance." It saves the setting in the Subscriptions.xml subscription data file, instead of the default subscription data file.

## PARAMETERS

### -SubscriptionName
```yaml
Type: String
Parameter Sets: SelectSubscriptionByNameParameterSet, SelectDefaultSubscriptionByNameParameterSet
Aliases: Name

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Account
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

### -Current
```yaml
Type: SwitchParameter
Parameter Sets: SelectSubscriptionByNameParameterSet, SelectSubscriptionByIdParameterSet
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

### -Default
```yaml
Type: SwitchParameter
Parameter Sets: SelectDefaultSubscriptionByNameParameterSet, SelectDefaultSubscriptionByIdParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
```yaml
Type: String
Parameter Sets: SelectSubscriptionByIdParameterSet, SelectDefaultSubscriptionByIdParameterSet
Aliases: Id

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NoCurrent
```yaml
Type: SwitchParameter
Parameter Sets: NoCurrentSubscriptionParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoDefault
```yaml
Type: SwitchParameter
Parameter Sets: NoDefaultSubscriptionParameterSet
Aliases: 

Required: True
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

### None or System.Boolean
If you use the *PassThru* parameter, this cmdlet returns a Boolean value.
By default, it does not generate any output.

## NOTES

## RELATED LINKS

[Get-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Get-AzureSubscription.md)

[Remove-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Remove-AzureSubscription.md)

[Set-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Set-AzureSubscription.md)


