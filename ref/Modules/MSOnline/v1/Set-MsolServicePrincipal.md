---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 692698D2-D070-449D-B112-1CEB30743A38
updated_at: 11/7/2016 8:50 PM
ms.date: 11/7/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolServicePrincipal.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolServicePrincipal.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/e45b51fd816f025d32fa17a27b0e7eafee1289da/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolServicePrincipal.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Set-MsolServicePrincipal

## SYNOPSIS
Updates a service principal in Microsoft Azure Active Directory.

## SYNTAX

```
Set-MsolServicePrincipal [-ObjectId <Guid>] [-AppPrincipalId <Guid>] [-DisplayName <String>]
 [-ServicePrincipalNames <String[]>] [-AccountEnabled <Boolean>] [-Addresses <RedirectUri[]>]
 [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-MsolServicePrincipal** cmdlet updates a service principal in Microsoft Azure Active Directory.
It can be used to update the display name, enable/disable the service principal, trusted for delegation, the service principal names (SPNs) or the addresses.

## EXAMPLES

### Example 1: Change properties on a service principal
```
PS C:\> $AppId = (Get-MsolServicePrincipal -ServicePrincipalName "MyApp").AppPrincipalId
PS C:\> Set-MsolServicePrincipal -AppPrincipalId $AppId -DisplayName "My Super Application" -ServicePrincipalNames @("MyApp/myapp.com", "MyApp/mysuperapp.com")
```

This command updates properties on the specified service principal.
In this example, it specifies updates to the display name and the SPNs.
This will overwrite any previous settings.

### Example 2: Change addresses on a service principal
```
PS C:\> $a = @()
PS C:\> $a = $a + (Get-MsolServicePrincipal -ServicePrincipalName "MyApp").Addresses
PS C:\> $a = $a + (New-MsolServicePrincipalAddress -Value "myApp1.com")
PS C:\> $a = $a + (New-MsolServicePrincipalAddress -Value "myApp2.com")
PS C:\> Set-MsolServicePrincipal -AppPrincipalId $AppId -Addresses $a
```

This command updates the addresses of a service principal.
In this example, existing Addresses that were previously created ("myApp1.com", "myApp2.com") using the [New-MsolServicePrincipalAddress](./New-MsolServicePrincipalAddress.md) cmdlet, are associated with the service principal.

## PARAMETERS

### -AccountEnabled
This property is reserved for future use.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Addresses
Specifies the addresses list with which to update and overwrite the existing list.
If you do not specify this parameter, the existing property is not updated.
If you specify an empty list, the existing addresses are cleared.
Use the [New-MsolServicePrincipalAddress](./New-MsolServicePrincipalAddress.md) cmdlet to help create the Addresses list object.

```yaml
Type: RedirectUri[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AppPrincipalId
Specifies the unique application ID that is associated with the service principal to update.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DisplayName
Specifies the display name of the service principal.

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

### -ObjectId
Specifies the unique object ID of the service principal to update.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServicePrincipalNames
Specifies the list of SPNs with which to update and overwrite the existing.
If you do not specify this parameter, the existing property is not updated.
If you specify an empty list, the existing SPNs are cleared, except for the SPN that contains the **AppId** value of the service principal.
An SPN must use one of the following formats:

* `appName`
* `appName/hostname`
* a valid URL

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TenantId
Specifies the unique ID of the tenant on which to perform the operation.
The default value is the tenant of the current user.
This parameter applies only to partner users.


```yaml
Type: Guid
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

## OUTPUTS

## NOTES

## RELATED LINKS
[Get-MsolServicePrincipal](xref:MSOnline/v1/Get-MsolServicePrincipal.md)

[New-MsolServicePrincipal](xref:MSOnline/v1/New-MsolServicePrincipal.md)

[New-MsolServicePrincipalAddress](xref:MSOnline/v1/New-MsolServicePrincipalAddress.md)

[Remove-MsolServicePrincipal](xref:MSOnline/v1/Remove-MsolServicePrincipal.md)
