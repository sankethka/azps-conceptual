---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: BDD2699B-58FE-4548-A55A-6BB2DBBA21E9
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Start-AzureVNetGatewayDiagnostics.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Start-AzureVNetGatewayDiagnostics.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Start-AzureVNetGatewayDiagnostics.md
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

# Start-AzureVNetGatewayDiagnostics

## SYNOPSIS
Starts gateway diagnostics for a VPN gateway.

## SYNTAX

```
Start-AzureVNetGatewayDiagnostics [-VNetName] <String> [-CaptureDurationInSeconds] <Int32>
 [[-ContainerName] <String>] [-StorageContext] <AzureStorageContext> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureVNetGatewayDiagnostics** cmdlet starts a new gateway diagnostics session for a virtual private network (VPN) gateway.
Only one gateway diagnostics session can run at a time.
If you run this cmdlet while a gateway diagnostics session is running, this cmdlet returns an error.

## EXAMPLES


## PARAMETERS

### -VNetName
Specifies the virtual network that contains a virtual network gateway for which this cmdlet runs diagnostics.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CaptureDurationInSeconds
Specifies the capture duration in seconds.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerName
Specifies the name of an Azure container.
This cmdlet stores results in the container that this parameter specifies.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageContext
Specifies an Azure storage context.
This cmdlet stores results by using the storage context that this parameter specifies.

```yaml
Type: AzureStorageContext
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVNetGatewayDiagnostics](xref:ServiceManagement/Azure.Networking/v1.6.1/Get-AzureVNetGatewayDiagnostics.md)

[Stop-AzureVNetGatewayDiagnostics](xref:ServiceManagement/Azure.Networking/v1.6.1/Stop-AzureVNetGatewayDiagnostics.md)
