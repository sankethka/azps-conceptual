---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
ms.assetid: 9999E0EE-4A32-4C18-A6EC-2A073DC08710
online version: 
schema: 2.0.0
updated_at: 1/6/2017 6:13 PM
ms.date: 1/6/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Remove-WAPackVMRole.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Remove-WAPackVMRole.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/10d5db95c5649f79b4844462bb63e71dfc0bd195/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Remove-WAPackVMRole.md
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

# Remove-WAPackVMRole

## SYNOPSIS
Removes virtual machine role objects.

## SYNTAX

### FromVMRoleObject (Default)
```
Remove-WAPackVMRole [-VMRole] <VMRole> [-PassThru] [-Force] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### FromCloudService
```
Remove-WAPackVMRole [-VMRole] <VMRole> [-CloudServiceName] <String> [-PassThru] [-Force]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
These topics are deprecated and will be removed in the future.
For the updated topics, see [Azure WAPack Cmdlets](http://msdn.microsoft.com/library/dn776450.aspx) (http://msdn.microsoft.com/library/dn776450.aspx).
This topic describes the cmdlet in the 0.8.1 version of the Microsoft Azure PowerShell module.
To find out the version of the module you're using, from the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

The **Remove-WAPackVMRole** cmdlet removes virtual machine role objects.

## EXAMPLES

### Example 1: Remove a virtual machine role (which was created using the WAP portal)
```
PS C:\> $VMRole = Get-WAPackVMRole -Name "ContosoVMRole01"
PS C:\> Remove-WAPackVMRole -VMRole $VMRole
```

The first command gets the virtual machine role named ContosoVMRole01 by using the **Get-WAPackVMRole** cmdlet, and then stores that object in the $VMRole variable.

The second command removes the virtual machine role stored in $VMRole.
The command prompts you for confirmation.Assuming this virtual machine role was created using the WAP portal, there's no need to specify the cloud service name.

### Example 2: Remove a virtual machine role which was created after manually creating a cloud service
```
PS C:\> $VMRole = Get-WAPackVMRole -Name "ContosoVMRole02"
PS C:\> Remove-WAPackVMRole -VMRole $VMRole -CloudServiceName "ContosoCloudService02"
```

The first command gets the virtual machine role named "ContosoVMRole02" by using the **Get-WAPackVMRole** cmdlet, and then stores that object in the $VMRole variable.

The second command removes the virtual machine role stored in $VMRole.
The command prompts you for confirmation.
Assuming this virtual machine role was not created using the portal, the user needs to specify the cloud service name.
In this case named "ContosoCloudService02".

### Example 3: Remove a virtual machine role without confirmation
```
PS C:\> $VMRole = Get-WAPackVMRole -Name "ContosoVMRole03"
PS C:\> Remove-WAPackVMRole -VMRole $VMRole -Force
```

The first command gets the cloud service named ContosoVMRole03 by using the **Get-WAPackVMRole** cmdlet, and then stores that object in the $VMRole variable.

The second command removes the virtual machine role stored in $VMRole.
This command includes the *Force* parameter.
The command does not prompt you for confirmation.

## PARAMETERS

### -VMRole
Specifies a virtual machine role.
To get a virtual machine role, use the **Get-WAPackVMRole** cmdlet.

```yaml
Type: VMRole
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

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

### -Force
Forces the command to run without asking for user confirmation.

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

### -CloudServiceName
Specifies the cloud service name of virtual machine role.

```yaml
Type: String
Parameter Sets: FromCloudService
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-WAPackVMRole](xref:ServiceManagement/Azure.Compute/v3.1.0/Get-WAPackVMRole.md)

[New-WAPackVMRole](xref:ServiceManagement/Azure.Compute/v3.1.0/New-WAPackVMRole.md)

[Set-WAPackVMRole](xref:ServiceManagement/Azure.Compute/v3.1.0/Set-WAPackVMRole.md)


