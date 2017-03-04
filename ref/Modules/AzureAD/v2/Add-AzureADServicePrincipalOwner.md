---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: 22D71474-34F5-4646-BB68-A929B211D283
online version: 
schema: 2.0.0
updated_at: 12/5/2016 8:34 PM
ms.date: 12/5/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Add-AzureADServicePrincipalOwner.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Add-AzureADServicePrincipalOwner.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/a3f4eb41072cf1506c8f82aa100e942b0830fc23/Azure%20AD%20Cmdlets/AzureAD/v2/Add-AzureADServicePrincipalOwner.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Add-AzureADServicePrincipalOwner

## SYNOPSIS
Adds an owner to a service principal.

## SYNTAX

```
Add-AzureADServicePrincipalOwner -ObjectId <String> -RefObjectId <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureADServicePrincipalOwner** cmdlet adds an owner to a service principal in Azure Active Directory.

## EXAMPLES

### Example 1: Add a user as an owner to a service principal
```
PS C:\> $ServicePrincipalId = (Get-AzureADServicePrincipal -Top 1).ObjectId
PS C:\> $OwnerId = (Get-AzureADUser -Top 1).ObjectId
PS C:\> Add-AzureADServicePrincipalOwner -ObjectId $ServicePrincipalId -RefObjectId -$OwnerId
```

The first command gets the object ID of a service principal by using the [Get-AzureADServicePrincipal](./Get-AzureADServicePrincipal.md) cmdlet, and then stores it in the $ServicePrincipalId variable. 

The second command gets the object ID a user by using the [Get-AzureADUser](./Get-AzureADUser.md) cmdlet, and then stores it in the $OwnerId variable. 

The final command adds the user specified by $OwnerId an owner to a service principal specified by $ServicePrincipalId.

## PARAMETERS

### -InformationAction
Specifies how this cmdlet responds to an information event. The acceptable values for this parameter are:

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
Specifies a variable in which to store an information event message.

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

### -ObjectId
Specifies the ID of a service principal in Active Directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -RefObjectId
Specifies the ID of the Active Directory object to assign as owner/manager/member.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureADServicePrincipal](xref:AzureAD/v2/Get-AzureADServicePrincipal.md)

[Get-AzureADServicePrincipalOwner](xref:AzureAD/v2/Get-AzureADServicePrincipalOwner.md)

[Get-AzureADUser](xref:AzureAD/v2/Get-AzureADUser.md)

[Remove-AzureADServicePrincipalOwner](xref:AzureAD/v2/Remove-AzureADServicePrincipalOwner.md)
