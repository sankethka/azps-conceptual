---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 16C0E7F5-9DB4-4AC7-8B55-FD2E6A6D0566
updated_at: 1/11/2017 10:09 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Reset-AzureRemoteAppVpnSharedKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Reset-AzureRemoteAppVpnSharedKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/45f0d6967fa74d25a9f1429acae86d4dfc7d3f01/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v3.0.0/Reset-AzureRemoteAppVpnSharedKey.md
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

# Reset-AzureRemoteAppVpnSharedKey

## SYNOPSIS
Resets the Azure RemoteApp VPN shared key.

## SYNTAX

```
Reset-AzureRemoteAppVpnSharedKey [-VNetName] <String> [-Profile <AzureSMProfile>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Reset-AzureRemoteAppVpnSharedKey** cmdlet resets the Azure RemoteApp virtual private network (VPN) shared key.

## EXAMPLES

### Example 1: Reset the shared key on a virtual network
```
PS C:\> Reset-AzureRemoteAppVpnSharedKey -VNetName "ContosoVNet"
```

This command resets the shared key on the virtual network named ContosoVNet.
The VPN connection to the on-premises network remains offline until the new shared key is configured on the VPN device.
To configure the VPN device, use the **Get-AzureRemoteAppVpnDeviceConfigScript** cmdlet to retrieve the correct script or configuration file for your VPN device, then load that script or configuration file onto the VPN device.

## PARAMETERS

### -VNetName
Specifies the name of the Azure RemoteApp virtual network.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String

## NOTES

## RELATED LINKS

[Get-AzureRemoteAppVNet](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppVNet.md)

[Get-AzureRemoteAppVpnDeviceConfigScript](xref:ServiceManagement/Azure.RemoteApp/v3.0.0/Get-AzureRemoteAppVpnDeviceConfigScript.md)


