---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 65F5C5E0-AFAB-4F6A-B31C-4E757B057C23
updated_at: 1/12/2017 12:24 AM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.0.0/Get-AzureNetworkSecurityGroupAssociation.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.0.0/Get-AzureNetworkSecurityGroupAssociation.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e57471ccf6c62263125f4c01fc0b0ce8ed76d386/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.0.0/Get-AzureNetworkSecurityGroupAssociation.md
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

# Get-AzureNetworkSecurityGroupAssociation

## SYNOPSIS
Gets a network security group for a virtual machine, network adapter, or PaaS role.

## SYNTAX

### GetNetworkSecurityGroupAssociationForSubnet
```
Get-AzureNetworkSecurityGroupAssociation [-VirtualNetworkName] <String> [-SubnetName] <String> [-Detailed]
 [-Profile <AzureSMProfile>] [-PipelineVariable <String>] [<CommonParameters>]
```

### GetNetworkSecurityGroupAssociationForIaaSRole
```
Get-AzureNetworkSecurityGroupAssociation [-VM] <PersistentVMRoleContext> [-ServiceName] <String>
 [[-NetworkInterfaceName] <String>] [-Detailed] [-Profile <AzureSMProfile>] [-PipelineVariable <String>]
 [<CommonParameters>]
```

### GetNetworkSecurityGroupAssociationForPaaSRole
```
Get-AzureNetworkSecurityGroupAssociation [[-Slot] <String>] [-RoleName] <String> [-ServiceName] <String>
 [[-NetworkInterfaceName] <String>] [-Detailed] [-Profile <AzureSMProfile>] [-PipelineVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureNetworkSecurityGroupAssociation** cmdlet gets the network security group for a virtual machine, network adapter, or platform as a service (PaaS) role.

## EXAMPLES

### Example 1: Get the network security group for a virtual machine
```
PS C:\> Get-AzureVM -ServiceName "ContosoService" -Name "ContosoVM06" | Get-AzureNetworkSecurityGroupAssociation
```

This command gets a virtual machine named ContosoVM06 for the service named ContosoService, and passes that virtual machine object to the current cmdlet.
The current cmdlet gets the network security group associated to that virtual machine.

## PARAMETERS

### -Detailed
Indicates that this cmdlet returns details of the network security group that is associated to the virtual machine.
These details include location and rules.

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

### -NetworkInterfaceName
Specifies the name of the network adapter for which this cmdlet gets the network security group.

```yaml
Type: String
Parameter Sets: GetNetworkSecurityGroupAssociationForIaaSRole, GetNetworkSecurityGroupAssociationForPaaSRole
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PipelineVariable


```yaml
Type: String
Parameter Sets: (All)
Aliases: pv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads. 
If you do not specify a profile, this cmdlet reads from the local default profile.
By default, this cmdlet does not generate any output.

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

### -RoleName
Specifies the name of a PaaS role for which this cmdlet gets the network security group.

```yaml
Type: String
Parameter Sets: GetNetworkSecurityGroupAssociationForPaaSRole
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServiceName
Specifies the name of a cloud service.
The PaaS role belongs to the service that this parameter specifies.

```yaml
Type: String
Parameter Sets: GetNetworkSecurityGroupAssociationForIaaSRole, GetNetworkSecurityGroupAssociationForPaaSRole
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Slot
Specifies a PaaS slot.
The PaaS role for which this cmdlet gets the network security group has the slot that this parameter specifies.
Valid values are: 

- Production
- Staging 

The default value is Production.

```yaml
Type: String
Parameter Sets: GetNetworkSecurityGroupAssociationForPaaSRole
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubnetName
Specifies the name of a subnet for which this cmdlet gets the network security group.

```yaml
Type: String
Parameter Sets: GetNetworkSecurityGroupAssociationForSubnet
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VirtualNetworkName
Specifies the name of a virtual network that contains the subnet for which this cmdlet gets the network security group.

```yaml
Type: String
Parameter Sets: GetNetworkSecurityGroupAssociationForSubnet
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine to which this cmdlet applies the network security group.

```yaml
Type: PersistentVMRoleContext
Parameter Sets: GetNetworkSecurityGroupAssociationForIaaSRole
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.WindowsAzure.Commands.ServiceManagement.Network.NetworkSecurityGroup.Model.INetworkSecurityGroup

## NOTES

## RELATED LINKS

[Remove-AzureNetworkSecurityGroupAssociation](xref:ServiceManagement/Azure.Networking/v3.0.0/Remove-AzureNetworkSecurityGroupAssociation.md)

[Set-AzureNetworkSecurityGroupAssociation](xref:ServiceManagement/Azure.Networking/v3.0.0/Set-AzureNetworkSecurityGroupAssociation.md)


