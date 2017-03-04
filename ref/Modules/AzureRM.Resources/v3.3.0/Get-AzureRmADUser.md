---
external help file: Microsoft.Azure.Commands.Resources.dll-Help.xml
ms.assetid: BF254F2F-F658-45CC-8AC8-53FF96CFCAAD
online version: 
schema: 2.0.0
updated_at: 2/23/2017 2:56 AM
ms.date: 2/23/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmADUser.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmADUser.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d070c11b7655b031efb443fc675d2cfb22229331/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmADUser.md
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

# Get-AzureRmADUser

## SYNOPSIS
Gets active directory users.

## SYNTAX

### EmptyParameterSet (Default)
```
Get-AzureRmADUser [-UserPrincipalName <String>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

### SearchStringParameterSet
```
Get-AzureRmADUser -SearchString <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

### ObjectIdParameterSet
```
Get-AzureRmADUser -ObjectId <Guid> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
```

### UPNParameterSet
```
Get-AzureRmADUser -UserPrincipalName <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

### MailParameterSet
```
Get-AzureRmADUser -Mail <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
```

## DESCRIPTION
The **Get-AzureRmADUser** cmdlet gets active directory users.

## EXAMPLES

### Example 1: Get a user using UPN
```
PS C:\> Get-AzureRmADUser -UPN "pattifuller@contoso.com"
```

This command gets the user named pattifuller@contoso.com

### Example 2: Get users using a search string
```
PS C:\> Get-AzureRmADUser -SearchString "contoso"
```

This command gets all Active Directory users that has contoso in the display name.

### Example 3: Get all Active Directory users
```
PS C:\> Get-AzureRmADUser
```

This command gets all Active Directory users.

## PARAMETERS

### -UserPrincipalName
Specifies the user principal name (UPN) of the user that this cmdlet gets.

```yaml
Type: String
Parameter Sets: EmptyParameterSet
Aliases: UPN

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: UPNParameterSet
Aliases: UPN

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -SearchString
The user display name

```yaml
Type: String
Parameter Sets: SearchStringParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ObjectId
Object id of the user.

```yaml
Type: Guid
Parameter Sets: ObjectIdParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Mail
Specifies the email of the user.

```yaml
Type: String
Parameter Sets: MailParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRmADUser](xref:ResourceManager/AzureRM.Resources/v3.3.0/New-AzureRmADUser.md)

[Set-AzureRmADUser](xref:ResourceManager/AzureRM.Resources/v3.3.0/Set-AzureRmADUser.md)

[Remove-AzureRmADUser](xref:ResourceManager/AzureRM.Resources/v3.3.0/Remove-AzureRmADUser.md)
