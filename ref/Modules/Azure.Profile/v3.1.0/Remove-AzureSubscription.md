---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
ms.assetid: ABC303ED-8712-4958-B871-E95357012277
online version: 
schema: 2.0.0
updated_at: 1/4/2017 10:41 PM
ms.date: 1/4/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Remove-AzureSubscription.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Remove-AzureSubscription.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/379557ccffccbfa288c09f905962979254b5a124/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v3.1.0/Remove-AzureSubscription.md
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

# Remove-AzureSubscription

## SYNOPSIS
Deletes an Azure subscription from Windows PowerShell.

## SYNTAX

### Name (Default)
```
Remove-AzureSubscription [-SubscriptionName] <String> [-Force] [-PassThru] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Id
```
Remove-AzureSubscription [-SubscriptionId] <String> [-Force] [-PassThru] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureSubscription** cmdlet deletes an Azure subscription from your subscription data file so Windows PowerShell can't find it.
This cmdlet does not delete the subscription from Microsoft Azure, or change the actual subscription in any way.

This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

## EXAMPLES

### Example 1: Delete a subscription
```
C:\PS> Remove-AzureSubscription -SubscriptionName Test

Confirm
Are you sure you want to perform this action?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"):
```

This command deletes the "Test" subscription from the default subscription data file.

### Example 2: Delete from an alternate subscription data file
```
C:\PS> Remove-AzureSubscription -SubscriptionName Test -SubscriptionDataFile C:\Subs\MySubscriptions.xml -Force
```

This command deletes the Test subscription from the MySubscriptions.xml subscription data file.
The command uses the *Force* parameter to suppress the confirmation prompt.

### Example 3: Delete a subscription in a script
```
C:\PS> ...if (Remove-AzureSubscription -SubscriptionName Test -PassThru) {...}
```

This command uses the **Remove-AzureSubscription** command in an **If** statement.
It uses the *PassThru* parameter, which returns a Boolean value, to determine whether the script block in the **If** statement is executed.

## PARAMETERS

### -SubscriptionName
```yaml
Type: String
Parameter Sets: Name
Aliases: Name

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
Suppresses the confirmation prompt.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
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
Position: 3
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

### -SubscriptionId
```yaml
Type: String
Parameter Sets: Id
Aliases: Id

Required: True
Position: 0
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
If you use the *PassThru* parameter, this cmdlet returns a Boolean value.
Otherwise, it does not return any output.

## NOTES

## RELATED LINKS

[Get-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Get-AzureSubscription.md)

[Select-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Select-AzureSubscription.md)

[Set-AzureSubscription](xref:ServiceManagement/Azure.Profile/v3.1.0/Set-AzureSubscription.md)


