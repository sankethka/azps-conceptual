---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400593
schema: 2.0.0
ms.assetid: 9802F554-834A-4BA0-A086-C7F8B2976939
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Add-AadrmRoleBasedAdministrator.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Add-AadrmRoleBasedAdministrator.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Add-AadrmRoleBasedAdministrator.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure Powershell
author: cabailey
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: cabailey
open_to_public_contributors: False
ms.service: rights-management
---

# Add-AadrmRoleBasedAdministrator

## SYNOPSIS
Grants administrative rights to Rights Management.

## SYNTAX

### ObjectId
```
Add-AadrmRoleBasedAdministrator [-ObjectId <Guid>] [-Role <Role>] [<CommonParameters>]
```

### DisplayName
```
Add-AadrmRoleBasedAdministrator [-SecurityGroupDisplayName <String>] [-Role <Role>] [<CommonParameters>]
```

### EmailAddress
```
Add-AadrmRoleBasedAdministrator [-EmailAddress <String>] [-Role <Role>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AadrmRoleBasedAdministrator** cmdlet grants administrative rights to Azure Rights Management within your organization. Specify a user or group to have administrative rights.

You must use PowerShell to configure delegated administrative control for the Azure Rights Management service; you cannot do this configuration by using a management portal.

This cmdlet adds a member user or group to the list of users and groups that can administer Rights Management. By default, all Microsoft Office 365 global administrators can run all the PowerShell cmdlets for Rights Management. To grant rights to another administrator within your organization, use this cmdlet to specify a security group that can administer the service.

Note: One of the parameters for this cmdlet uses the ObjectId (also known as a GUID). Because the Office 365 admin center and the Azure classic portal does not display the GUIDs that are used to identify specific user or groups objects, you can use the following two steps to find the values that you need to specify the GUIDs. Or, you can use the Azure portal to find these values.

1. If you have not already done so, download and install a PowerShell module for Azure AD. Connect to the service and get details of the security group that you want to specify. For example, connect to the service by running **Connect-MsolService**, and then run **Get-MsolGroup**. 

Tip: If you have many groups, use the **Where-Object** cmdlet in Windows PowerShell to filter results.
For example, you might enter the following cmdlet to filter and return only groups that start with "Rights": **Get-MsolGroup | where {$_.DisplayName -like "Rights*" }**

2. From the output of the cmdlet, copy the GUID value that was returned and use (paste) that value into the value of the *ObjectId* parameter when you run the **Add-RoleBased Administrator** or [Remove-AadrmRoleBasedAdministrator](./Remove-AadrmRoleBasedAdministrator) cmdlet.

## EXAMPLES

### Example 1: Grant administrative rights by using a display name
```
PS C:\>Add-AadrmRoleBasedAdministrator -SecurityGroupDisplayName "Finance Employees"
```

This command grants administrative rights to Rights Management for the group named Finance Employees.

### Example 2: Grant administrative rights by using a GUID
```
PS C:\>Add-AadrmRoleBasedAdministrator -ObjectId 2c8afe23-bf58-4289-bea1-05131aeb50ab
```

This command grants administrative rights to Rights Management for the group that has the specified GUID.

## PARAMETERS

### -EmailAddress
Specifies the email address of a user or group. The cmdlet adds administrative rights for the user or group that is identified by the email address that you specify.

```yaml
Type: String
Parameter Sets: EmailAddress
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ObjectId
Specifies the GUID of a user or group. The cmdlet adds administrative rights for the user or group that is identified by a GUID that you specify.

```yaml
Type: Guid
Parameter Sets: ObjectId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Role
Specifies a role of either **Azure Rights Management global administrator** (the user can configure all aspects of Azure RMS by using Azure RMS PowerShell commands) or **Azure Rights Management connector administrator** (the account is granted least privileges to configure and run the RMS connector).

To specify these roles, use the following values:  

- GlobalAdministrator

- ConnectorAdministrator

The default value is GlobalAdministrator.

```yaml
Type: Role
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -SecurityGroupDisplayName
Specifies the display name of a user or group. The cmdlet adds administrative rights for the user or group that is identified by the name that you specify.

```yaml
Type: String
Parameter Sets: DisplayName
Aliases:

Required: False
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

[Get-AadrmRoleBasedAdministrator](xref:AADRM/vlatest/Get-AadrmRoleBasedAdministrator.md)

[Remove-AadrmRoleBasedAdministrator](xref:AADRM/vlatest/Remove-AadrmRoleBasedAdministrator.md)
