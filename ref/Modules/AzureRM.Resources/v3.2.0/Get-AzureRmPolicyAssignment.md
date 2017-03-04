---
external help file: Microsoft.Azure.Commands.ResourceManager.Cmdlets.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A8AD85D6-5EC3-4754-970C-979446582FEC
updated_at: 1/9/2017 9:52 PM
ms.date: 1/9/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.2.0/Get-AzureRmPolicyAssignment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.2.0/Get-AzureRmPolicyAssignment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4f60f66b5229674cbde5c80b99ac704ad8318378/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.2.0/Get-AzureRmPolicyAssignment.md
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

# Get-AzureRmPolicyAssignment

## SYNOPSIS
Gets policy assignments.

## SYNTAX

### The list all policy assignments parameter set. (Default)
```
Get-AzureRmPolicyAssignment [-ApiVersion <String>] [-Pre] [<CommonParameters>]
```

### The policy assignment name parameter set.
```
Get-AzureRmPolicyAssignment [-Name <String>] -Scope <String> [-PolicyDefinitionId <String>]
 [-ApiVersion <String>] [-Pre] [<CommonParameters>]
```

### The policy assignment Id parameter set.
```
Get-AzureRmPolicyAssignment -Id <String> [-PolicyDefinitionId <String>] [-ApiVersion <String>] [-Pre]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmPolicyAssignment** cmdlet gets all policy assignments or particular assignments.
Identify a policy assignment to get by name and scope or by ID.

## EXAMPLES

### Example 1: Get all policy assignments
```
PS C:\> Get-AzureRmPolicyAssignment
```

This command gets all the policy assignments.

### Example 2: Get a specific policy assignment
```
PS C:\> $ResourceGroup = Get-AzureRmResourceGroup -Name "ResourceGroup11"
PS C:\> Get-AzureRmPolicyAssignment -Name "PolicyAssignment07" -Scope $ResourceGroup.ResourceId
```

The first command gets a resource group named ResourceGroup11 by using the **Get-AzureRMResourceGroup** cmdlet.
The command stores that object in the $ResourceGroup variable.

The second command get the policy assignment named PolicyAssignment07 for the scope that the **ResourceId** property of $ResourceGroup identifies.

## PARAMETERS

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

### -Name
Specifies the name of the policy assignment that this cmdlet gets.

```yaml
Type: String
Parameter Sets: The policy assignment name parameter set.
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Scope
Specifies the scope at which the policy is applied for the assignment that this cmdlet gets.

```yaml
Type: String
Parameter Sets: The policy assignment name parameter set.
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PolicyDefinitionId
Specifies the ID of the policy definition of the policy assignments that this cmdlet gets.

```yaml
Type: String
Parameter Sets: The policy assignment name parameter set., The policy assignment Id parameter set.
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Id
Specifies the fully qualified resource ID for the policy assignment that this cmdlet gets.

```yaml
Type: String
Parameter Sets: The policy assignment Id parameter set.
Aliases: ResourceId

Required: True
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

[New-AzureRmPolicyAssignment](xref:ResourceManager/AzureRM.Resources/v3.2.0/New-AzureRmPolicyAssignment.md)

[Remove-AzureRmPolicyAssignment](xref:ResourceManager/AzureRM.Resources/v3.2.0/Remove-AzureRmPolicyAssignment.md)

[Set-AzureRmPolicyAssignment](xref:ResourceManager/AzureRM.Resources/v3.2.0/Set-AzureRmPolicyAssignment.md)


