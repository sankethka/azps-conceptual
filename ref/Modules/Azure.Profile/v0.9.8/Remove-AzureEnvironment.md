---
external help file: Microsoft.WindowsAzure.Commands.Profile.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: DB99D6BA-4FD9-491E-BF7E-4511B3EAAD12
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Remove-AzureEnvironment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Remove-AzureEnvironment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Profile/v0.9.8/Remove-AzureEnvironment.md
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

# Remove-AzureEnvironment

## SYNOPSIS
Deletes an Azure environment from Windows PowerShell

## SYNTAX

```
Remove-AzureEnvironment [-Name] <String> [-Force] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureEnvironment** cmdlet deletes an Azure environment from your roaming profile so Windows PowerShell can't find it.
This cmdlet does not delete the environment from Microsoft Azure, or change the actual environment in any way.

An Azure environment an independent deployment of Microsoft Azure, such as AzureCloud for global Azure and AzureChinaCloud for Azure operated by 21Vianet in China.
You can also create on-premises Azure environments by using Azure Pack and the WAPack cmdlets.
For more information, see Azure Packhttp://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx (http://www.microsoft.com/server-cloud/products/windows-azure-pack/default.aspx).

## EXAMPLES

### Example 1: Delete an environment
```
PS C:\>Remove-AzureEnvironment -Name ContosoEnv
```

This command deletes the ContosoEnv environment from Windows PowerShell.

### Example 2: Delete multiple environments
```
PS C:\>Get-AzureEnvironment | Where-Object EnvironmentName -like "Contoso*" | ForEach-Object {Remove-AzureEnvironment -Name $_.EnvironmentName }
```

This command deletes environments whose names begin with "Contoso" from Windows PowerShell.

## PARAMETERS

### -Name
Specifies the name of the environment to remove.
This parameter is required.
This parameter value is case-sensitive.
Wildcard characters are not permitted.

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

### -Force

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
You can pipe input to this cmdlet by property name, but not by value.

## OUTPUTS

### None or System.Boolean
If you use the **PassThru** parameter, this cmdlet returns a Boolean value.
Otherwise, it does not return any output.

## NOTES

## RELATED LINKS

[Add-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v0.9.8/Add-AzureEnvironment.md)

[Get-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v0.9.8/Get-AzureEnvironment.md)

[Set-AzureEnvironment](xref:ServiceManagement/Azure.Profile/v0.9.8/Set-AzureEnvironment.md)


