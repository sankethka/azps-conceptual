---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 05396FED-4E73-45B3-B161-AE5BD6CA2B17
updated_at: 1/12/2017 12:24 AM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.0.0/Get-AzureIPForwarding.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.0.0/Get-AzureIPForwarding.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e57471ccf6c62263125f4c01fc0b0ce8ed76d386/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v3.0.0/Get-AzureIPForwarding.md
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

# Get-AzureIPForwarding

## SYNOPSIS
Gets the status of IP forwarding.

## SYNTAX

### IaaSIPForwardingParamSet
```
Get-AzureIPForwarding [-VM] <PersistentVMRoleContext> [-ServiceName] <String>
 [[-NetworkInterfaceName] <String>] [-Profile <AzureSMProfile>] [-PipelineVariable <String>]
 [<CommonParameters>]
```

### SlotIPForwardingParamSet
```
Get-AzureIPForwarding [-ServiceName] <String> [[-Slot] <String>] [-RoleName] <String>
 [[-NetworkInterfaceName] <String>] [-Profile <AzureSMProfile>] [-PipelineVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureIPForwarding** cmdlet gets the status of IP forwarding.

## EXAMPLES

### Example 1: Get IP forwarding status for a virtual machine
```
PS C:\> Get-AzureVM -ServiceName "ContosoService" -Name "ContosoVM06" | Get-AzureIPForwarding
Disabled
```

This command gets a virtual machine named ContosoVM06 for the service named ContosoService, and passes that virtual machine object to the current cmdlet.
The current cmdlet gets the status of IP forwarding for that virtual machine.

## PARAMETERS

### -NetworkInterfaceName
Specifies the name of the network adapter for which this cmdlet gets IP forwarding status.

```yaml
Type: String
Parameter Sets: (All)
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
Specifies the name of a PaaS role for which this cmdlet gets IP forwarding status.

```yaml
Type: String
Parameter Sets: SlotIPForwardingParamSet
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
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Slot
Specifies a PaaS slot.
The PaaS role for which this cmdlet gets forwarding status has the slot that this parameter specifies.
Valid values are: 

- Production
- Staging 

The default value is Production.

```yaml
Type: String
Parameter Sets: SlotIPForwardingParamSet
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine object for which this cmdlet gets IP forwarding status.

```yaml
Type: PersistentVMRoleContext
Parameter Sets: IaaSIPForwardingParamSet
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

### System.String

## NOTES

## RELATED LINKS

[Set-AzureIPForwarding](xref:ServiceManagement/Azure.Networking/v3.0.0/Set-AzureIPForwarding.md)


