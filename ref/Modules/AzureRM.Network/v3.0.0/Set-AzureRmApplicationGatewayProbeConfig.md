---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E6AEE08D-5412-4C33-887F-62C1742C7AF6
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmApplicationGatewayProbeConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmApplicationGatewayProbeConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Set-AzureRmApplicationGatewayProbeConfig.md
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

# Set-AzureRmApplicationGatewayProbeConfig

## SYNOPSIS
Sets the health probe configuration on an existing Application Gateway.

## SYNTAX

```
Set-AzureRmApplicationGatewayProbeConfig -ApplicationGateway <PSApplicationGateway> -Name <String>
 -Protocol <String> -HostName <String> -Path <String> -Interval <UInt32> -Timeout <UInt32>
 -UnhealthyThreshold <UInt32> [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmApplicationGatewayProbeConfig** cmdlet sets the health probe configuration on an existing Application Gateway.

## EXAMPLES

### Example 1: Set the configuration for a health probe on an application gateway
```
PS C:\>Set-AzureRmApplicationGatewayProbeConfig -ApplicationGateway Gateway -Name "Probe05" -Protocol Http -HostName "contoso.com" -Path "/path/custompath.htm" -Interval 30 -Timeout 120 -UnhealthyThreshold 8
```

This command sets the configuration for a health probe named Probe05 for the application gateway named Gateway.
The command also sets the unhealthy threshold to 8 retries and times out after 120 seconds.

## PARAMETERS

### -ApplicationGateway
Specifies the application gateway to which this cmdlet sends a probe.

```yaml
Type: PSApplicationGateway
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Specifies the name of the probe.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
Specifies the protocol used to send probe.
This cmdlet supports HTTP only.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostName
Specifies the host name that this cmdlet sends the probe to.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Specifies the relative path of probe.
Valid paths start with the slash character (/).
The probe is sent to \<Protocol\>://\<host\>:\<port\>\<path\>.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Interval
Specifies the probe interval in seconds.
This is the time interval between two consecutive probes.
This value is between 1 second and 86400 seconds.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Specifies the probe timeout in seconds.
This cmdlet marks the probe as failed if a valid response is not received with this timeout period.
Valid values are between 1 second and 86400 seconds.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnhealthyThreshold
Specifies the probe retry count.
The backend server is marked down after consecutive probe failure count reaches the unhealthy threshold.
Valid values are between 1 second and 20 seconds.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: 

Required: True
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

[Add-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmApplicationGatewayProbeConfig.md)

[Get-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmApplicationGatewayProbeConfig.md)

[New-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmApplicationGatewayProbeConfig.md)

[Remove-AzureRmApplicationGatewayProbeConfig](xref:ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmApplicationGatewayProbeConfig.md)


