---
external help file: Microsoft.WindowsAzure.Commands.StorSimple.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: AF4C8235-6E27-4656-8846-2EF5B2FB817E
updated_at: 1/13/2017 8:31 PM
ms.date: 1/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v1.6.1/Get-AzureStorSimpleFailoverVolumeContainers.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v1.6.1/Get-AzureStorSimpleFailoverVolumeContainers.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4df29933055c067f66dd8427e7818e4e4ab777eb/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v1.6.1/Get-AzureStorSimpleFailoverVolumeContainers.md
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

# Get-AzureStorSimpleFailoverVolumeContainers

## SYNOPSIS
Gets the volume container groups for device failover.

## SYNTAX

### IdentifyById
```
Get-AzureStorSimpleFailoverVolumeContainers [-DeviceId] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

### IdentifyByName
```
Get-AzureStorSimpleFailoverVolumeContainers [-DeviceName] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureStorSimpleFailoverVolumeContainers** cmdlet gets the volume container groups for device failover.
Pass a single **VolumeContainer** group or an array of **VolumeContainer** groups to the **Start-AzureStorSimpleDeviceFailover** cmdlet.
Only groups that have a value of $True for the **IsDCGroupEligibleForDR** property are eligible for failover.

## EXAMPLES

### Example 1: Get failover volume containers
```
PS C:\> Get-AzureStorSimpleFailoverVolumeContainers -DeviceName "ChewD_App7"

DCGroup                    IneligibilityMessage          IsDCGroupEligibleForDR
-------                    --------------------          ----------------------
{VolumeContainer1889078...                                                 True
{VC_01}                    No cloud snapshot found                        False
{VolumeContainer7306959}   No cloud snapshot found                        False
{VolumeContainer407850151} No cloud snapshot found                        False
```

This command gets failover volume containers.
Only the DCGroups that have a value of $True for the **IsDCGroupEligibleForDR** property can be used for device failover.

## PARAMETERS

### -DeviceId
Specifies the instance ID of the StorSimple device on which to run the cmdlet.

```yaml
Type: String
Parameter Sets: IdentifyById
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeviceName
Specifies the name of the StorSimple device on which to run the cmdlet.

```yaml
Type: String
Parameter Sets: IdentifyByName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies an Azure profile.

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

### IList<DataContainerGroup>
This cmdlet returns a list of **VolumeContainer** groups.

## NOTES

## RELATED LINKS

[Start-AzureStorSimpleDeviceFailoverJob](xref:ServiceManagement/Azure.StorSimple/v1.6.1/Start-AzureStorSimpleDeviceFailoverJob.md)

[Get-AzureStorSimpleDeviceVolumeContainer](xref:ServiceManagement/Azure.StorSimple/v1.6.1/Get-AzureStorSimpleDeviceVolumeContainer.md)


