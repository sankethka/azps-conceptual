---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E2BBFDED-F8EC-403A-BF66-659981374E31
updated_at: 1/11/2017 10:09 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Clear-AzureRemoteAppVmStaleAdObject.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Clear-AzureRemoteAppVmStaleAdObject.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/45f0d6967fa74d25a9f1429acae86d4dfc7d3f01/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Clear-AzureRemoteAppVmStaleAdObject.md
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

# Clear-AzureRemoteAppVmStaleAdObject

## SYNOPSIS
Removes objects in Azure Active Directory that are associated with Azure RemoteApp virtual machines that no longer exist.

## SYNTAX

```
Clear-AzureRemoteAppVmStaleAdObject [-CollectionName] <String> [[-Credential] <PSCredential>]
 [-Profile <AzureSMProfile>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Clear-AzureRemoteAppVmStaleAdObject** cmdlet removes objects in Azure Active Directory that are associated with Azure RemoteApp virtual machines that no longer exist.
You must use credentials that have rights to remove Azure Active Directory objects.
If you specify the *Verbose* common parameter, this cmdlet displays the name of each object that it deletes.

## EXAMPLES

### Example 1: Clear stale objects for a collection
```
PS C:\> $AdminCredentials = Get-Credential
PS C:\> Clear-AzureRemoteAppVmStaleAdObject -CollectionName "Contoso" -Credential $AdminCredentials
```

The first command prompts you for a user name and password by using **Get-Credential**.
The command stores the results in the $AdminCredentials variable.

The second command clears the stale objects for the collection named Contoso.
The command uses the credentials stored in $AdminCredentials variable.
In order for the command to succeed, those credentials must have appropriate rights.

## PARAMETERS

### -CollectionName
Specifies the name of the Azure RemoteApp collection.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: True
Position: 0
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

### -Credential
Specifies a credential that has rights to perform this action.
To obtain a **Credential** object, use the Get-Credential cmdlet.
If you do not specify this parameter, this cmdlet uses the current user credentials.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases: 

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

[Get-AzureRemoteAppVmStaleAdObject](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppVmStaleAdObject.md)


