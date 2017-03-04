---
external help file: Microsoft.Azure.Commands.Resources.dll-Help.xml
ms.assetid: 4DC26C26-6162-4A15-BFCB-4D2B6B52DD81
online version: 
schema: 2.0.0
updated_at: 2/23/2017 2:56 AM
ms.date: 2/23/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmADServicePrincipal.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmADServicePrincipal.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d070c11b7655b031efb443fc675d2cfb22229331/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmADServicePrincipal.md
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

# Get-AzureRmADServicePrincipal

## SYNOPSIS
Filters active directory service principals.

## SYNTAX

### EmptyParameterSet (Default)
```
Get-AzureRmADServicePrincipal [-ServicePrincipalName <String>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

### SearchStringParameterSet
```
Get-AzureRmADServicePrincipal -SearchString <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

### ObjectIdParameterSet
```
Get-AzureRmADServicePrincipal -ObjectId <Guid> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

### SPNParameterSet
```
Get-AzureRmADServicePrincipal -ServicePrincipalName <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

## DESCRIPTION
Filters active directory service principals.

## EXAMPLES

### Example 1: Get service principals using the service principal name
```
PS C:\> Get-AzureRmADServicePrincipal -SPN 36f81fc3-b00f-48cd-8218-3879f51ff39f
```

This command gets service principals with the ID 36f81fc3-b00f-48cd-8218-3879f51ff39f.

### Example 2: Get service principals using a search string
```
PS C:\> Get-AzureRmADServicePrincipal -SearchString "Web"
```

This command gets all Active Directory service principals that have display name starting with Web.

### Example 3: Get all Active Directory service principals

```
PS C:\> Get-AzureRmADServicePrincipal
```

This command gets all Active Directory service principals.

## PARAMETERS

### -ServicePrincipalName
Specifies the service principal name (SPN) of the service.

```yaml
Type: String
Parameter Sets: EmptyParameterSet
Aliases: SPN

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: SPNParameterSet
Aliases: SPN

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
Specifies all service principals that have the display name starting with this value.

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
Specifies the object ID of the service principal that this cmdlet gets.

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

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRmADServicePrincipal](xref:ResourceManager/AzureRM.Resources/v3.3.0/New-AzureRmADServicePrincipal.md)

[Remove-AzureRmADServicePrincipal](xref:ResourceManager/AzureRM.Resources/v3.3.0/Remove-AzureRmADServicePrincipal.md)

[Set-AzureRmADServicePrincipal](xref:ResourceManager/AzureRM.Resources/v3.3.0/Set-AzureRmADServicePrincipal.md)

[Get-AzureRmADApplication](xref:ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmADApplication.md)

[Get-AzureRmADSpCredential](Get-AzureRmADSpCredential.md)
