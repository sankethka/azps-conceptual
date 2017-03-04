---
external help file: Microsoft.WindowsAzure.Commands.RemoteApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2CAC833C-3BE8-4147-AA5E-E00F175FD112
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v2.1.0/Get-AzureRemoteAppOperationResult.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v2.1.0/Get-AzureRemoteAppOperationResult.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.RemoteApp/v2.1.0/Get-AzureRemoteAppOperationResult.md
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

# Get-AzureRemoteAppOperationResult

## SYNOPSIS
Retrieves the result of an Azure RemoteApp operation.

## SYNTAX

```
Get-AzureRemoteAppOperationResult [-TrackingId] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRemoteAppOperationResult** cmdlet retrieves the result of a long-running Azure RemoteApp operation.
Azure RemoteApp uses long-running operations for many actions that require processing by the service and cannot return immediately.
Examples of cmdlets that return tracking IDs include **Update-AzureRemoteAppCollection**, **Set-AzureRemoteAppWorkspace**, **Disconnect-AzureRemoteAppSession**, and others.

## EXAMPLES

### Example 1: Use a tracking ID to get an operation result
```
PS C:\>$result = New-AzureRemoteAppCollection -CollectionName Contoso -ImageName "Windows Server 2012 R2" -Plan Standard -Location "West US" -Description CloudOnly
PS C:\> Get-AzureRemoteAppOperationResult -TrackingId $result.Tracking
```

This command saves the tracking ID returned from an Azure RemoteApp operation.
The tracking ID is passed to **Get-AzureRemoteAppOperationResult** in the command that follows.

## PARAMETERS

### -TrackingId
Specifies the tracking ID of an operation.

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

[Disconnect-AzureRemoteAppSession](xref:ServiceManagement/Azure.RemoteApp/v2.1.0/Disconnect-AzureRemoteAppSession.md)

[Set-AzureRemoteAppWorkspace](xref:ServiceManagement/Azure.RemoteApp/v2.1.0/Set-AzureRemoteAppWorkspace.md)

[Update-AzureRemoteAppCollection](xref:ServiceManagement/Azure.RemoteApp/v2.1.0/Update-AzureRemoteAppCollection.md)


