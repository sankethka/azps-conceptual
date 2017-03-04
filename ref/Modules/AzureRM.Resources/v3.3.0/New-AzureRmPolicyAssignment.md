---
external help file: Microsoft.Azure.Commands.ResourceManager.Cmdlets.dll-Help.xml
ms.assetid: BA40BD11-8167-48D7-AC71-72B2FD9924F2
online version: 
schema: 2.0.0
updated_at: 1/9/2017 7:56 PM
ms.date: 1/9/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/New-AzureRmPolicyAssignment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/New-AzureRmPolicyAssignment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/5988bf32e3ff01c5800597ecc3a6ae8a6be33061/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/New-AzureRmPolicyAssignment.md
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

# New-AzureRmPolicyAssignment

## SYNOPSIS
Creates a policy assignment.

## SYNTAX

```
New-AzureRmPolicyAssignment -Name <String> -Scope <String> [-DisplayName <String>] -PolicyDefinition <PSObject>
 [-ApiVersion <String>] [-Pre] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmPolicyAssignment** cmdlet creates a policy assignment.
Specify a policy and scope.

## EXAMPLES

### Example 1: Policy assignment at resource group level
```
PS C:\> $ResourceGroup = Get-AzureRmResourceGroup -Name "ResourceGroup11"
PS C:\> $Policy = Get-AzureRmPolicyDefinition -Name "VirtualMachinePolicy"
PS C:\> New-AzureRmPolicyAssignment -Name "VirtualMachinePolicyAssignment" -PolicyDefinition $Policy -Scope $ResourceGroup.ResourceId
```

The first command gets a resource group named ResourceGroup11 by using the **Get-AzureRMResourceGroup** cmdlet.
The command stores that object in the $ResourceGroup variable.

The second command gets the policy definition named VirtualMachinePolicy by using the **Get-AzureRmPolicyDefinition** cmdlet.
The command stores that object in the $Policy variable.

The final command assigns the policy in $Policy at the level of a resource group.
The **ResourceId** property of $ResourceGroup identifies the resource group.

## PARAMETERS

### -Name
Specifies a name for the policy assignment.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Scope
Specifies the scope at which to assign the policy.
For instance, to assign a policy to a resource group, specify the following:

`/subscriptions/<subscription ID>/resourcegroups/<resource group name>`

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DisplayName
Specifies a display name for the policy assignment.

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

### -PolicyDefinition
Specifies a policy, as a **PSObject** object that contains the policy rule.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ApiVersion
Specifies the version of the resource provider API to use.
If you do not specify a version, this cmdlet uses the latest available version.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Pre
Indicates that this cmdlet considers pre-release API versions when it automatically determines which version to use.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmPolicyDefinition](xref:ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmPolicyDefinition.md)

[Get-AzureRmPolicyAssignment](xref:ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmPolicyAssignment.md)

[Remove-AzureRmPolicyAssignment](xref:ResourceManager/AzureRM.Resources/v3.3.0/Remove-AzureRmPolicyAssignment.md)

[Set-AzureRmPolicyAssignment](xref:ResourceManager/AzureRM.Resources/v3.3.0/Set-AzureRmPolicyAssignment.md)


