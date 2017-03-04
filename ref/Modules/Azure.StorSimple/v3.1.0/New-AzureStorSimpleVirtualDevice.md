---
external help file: Microsoft.WindowsAzure.Commands.StorSimple.dll-Help.xml
ms.assetid: F16BCE0C-1F2C-4FB7-972D-28BE3CCD96D9
online version: 
schema: 2.0.0
updated_at: 1/10/2017 4:41 PM
ms.date: 1/10/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.1.0/New-AzureStorSimpleVirtualDevice.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.1.0/New-AzureStorSimpleVirtualDevice.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/9684c1f009f3792937fd2c56f696dc26f8986a83/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.1.0/New-AzureStorSimpleVirtualDevice.md
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

# New-AzureStorSimpleVirtualDevice

## SYNOPSIS
Creates a virtual StorSimple device.

## SYNTAX

### CreateNewStorageAccount
```
New-AzureStorSimpleVirtualDevice [-VirtualDeviceName] <String> [-VirtualNetworkName] <String>
 [-SubNetName] <String> [[-StorageAccountName] <String>] [-CreateNewStorageAccount] [-PersistAzureVMOnFailrue]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### UseExistingStorageAccount
```
New-AzureStorSimpleVirtualDevice [-VirtualDeviceName] <String> [-VirtualNetworkName] <String>
 [-SubNetName] <String> [-StorageAccountName] <String> [-PersistAzureVMOnFailrue] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureStorSimpleVirtualDevice** cmdlet creates a virtual StorSimple device.
Specify a device name for the device.
Specify virtual network and subnet details for the virtual network in the same subscription.
The geo should match the geo in which the StorSimple resource is created.
To use an existing storage account for this virtual device, specify the name.
To create a new storage account for this virtual device, specify both the *StorageAccountName* and the *CreateNewStorageAccount* parameters.

## EXAMPLES

### Example 1: Create a virtual device with a new account and an existing network
```
PS C:\> New-AzureStorSimpleVirtualDevice -VirtualDeviceName "Contosodevice02" -VirtualNetworkName "Saas2vpn" -SubNetName "TenantSubnet" -StorageAccountName "AzureTenant04" -CreateNewStorageAccount
64e4c564-b0ac-44b0-afb4-adf28ac24ad0
VERBOSE: The create job is triggered successfully. Please use the command Get-AzureStorSimpleJob -InstanceId 64e4c564-b0ac-44b0-afb4-adf28ac24ad0 for tracking the job's status
```

This command creates a virtual device that uses a new storage account and an existing virtual network.

### Example 2: Create a virtual device with an existing account and virtual network
```
PS C:\> New-AzureStorSimpleVirtualDevice -VirtualDeviceName "ContosoDevice07" -VirtualNetworkName "Saas2vpn" -SubNetName TenantSubnet -StorageAccountName azurecisbvtdnd
2a18a3b7-1ec6-481d-b95d-66ba8f67ceaf
VERBOSE: The create job is triggered successfully. Please use the command Get-AzureStorSimpleJob -InstanceId 2a18a3b7-1ec6-481d-b95d-66ba8f67ceaf for tracking the job's status
```

This command creates a virtual device that uses an existing storage account and an existing virtual network.

## PARAMETERS

### -VirtualDeviceName
Specifies a name for the virtual device.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VirtualNetworkName
Specifies the name of a virtual network.

```yaml
Type: String
Parameter Sets: (All)
Aliases: VNetName

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubNetName
Specifies the name of a virtual subnet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountName
Specifies the name of a storage account.

```yaml
Type: String
Parameter Sets: CreateNewStorageAccount
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: UseExistingStorageAccount
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateNewStorageAccount
Indicates that this cmdlet creates a new storage account.

```yaml
Type: SwitchParameter
Parameter Sets: CreateNewStorageAccount
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PersistAzureVMOnFailrue
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### String
This cmdlet returns the ID of the job that creates the virtual device.
You can use this ID to track the progress using the Get-AzureStorSimpleJob cmdlet.

## NOTES

## RELATED LINKS

[Get-AzureStorSimpleJob](xref:ServiceManagement/Azure.StorSimple/v3.1.0/Get-AzureStorSimpleJob.md)

[Set-AzureStorSimpleVirtualDevice](xref:ServiceManagement/Azure.StorSimple/v3.1.0/Set-AzureStorSimpleVirtualDevice.md)


