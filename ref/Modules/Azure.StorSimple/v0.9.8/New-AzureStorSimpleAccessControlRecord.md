---
external help file: Microsoft.WindowsAzure.Commands.StorSimple.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EE52512C-F578-4207-92CE-1638EAABAC08
updated_at: 11/18/2016 8:33 AM
ms.date: 11/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v0.9.8/New-AzureStorSimpleAccessControlRecord.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v0.9.8/New-AzureStorSimpleAccessControlRecord.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2537e371256820c5575d89299741a8f7b6f7e585/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v0.9.8/New-AzureStorSimpleAccessControlRecord.md
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

# New-AzureStorSimpleAccessControlRecord

## SYNOPSIS
Creates an access control record.

## SYNTAX

```
New-AzureStorSimpleAccessControlRecord [-ACRName] <String> [-IQNInitiatorName] <String> [-WaitForComplete]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureStorSimpleAccessControlRecord** cmdlet creates an access control record.
You can use an **AccessControlRecord** object to configure volumes.

## EXAMPLES

### Example 1: Create an Access Controlaccess control record and wait for the resultaccess control
```
PS C:\>New-AzureStorSimpleAccessControlRecord -ACRName "Acr10" -IQNInitiatorName "Iqn10" -WaitForComplete
Error      : Microsoft.WindowsAzure.Management.StorSimple.Models.ErrorDetails
JobId      : 08719243-3a76-43a5-a88b-e5f2b63ed3d9
JobSteps   : {}
Result     : Succeeded
Status     : Completed
TaskResult : Succeeded
StatusCode : OK
RequestId  : e12362c2c06615108ba8436cf85fcd40
```

This command creates an access control record named Acr10 for the iSCSI initiator named Iqn10.
This command specifies the *WaitForComplete* parameter, and, therefore, the command waits until the operation is complete, and then returns a **TaskStatusInfo** object.

### Example 2: Create an Access Controlaccess control recordaccess control
```
PS C:\>New-AzureStorSimpleAccessControlRecord -ACRName "Acr11" -IQNInitiatorName "Iqn11"
VERBOSE: The create job is submitted successfully. Please use the command Get-AzureStorSimpleTask -InstanceId
2bd56fbb-4b95-4f2c-b99f-6321231a018d for tracking the job status
```

This command creates an access control record named Acr11 for the iSCSI initiator named Iqn11.
This command does not specify the *WaitForComplete* parameter, and, therefore, the command starts the task, and then returns a **TaskResponse** object.
To see the status of the task, use the **Get-AzureStorSimpleTask** cmdlet.

## PARAMETERS

### -ACRName
Specifies a name for the access control record.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IQNInitiatorName
Specifies the iSCSI qualified name (IQN) of the iSCSI initiator to which this cmdlet provides access for the volume.

```yaml
Type: String
Parameter Sets: (All)
Aliases: IQN

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies an Azure profile.

```yaml
Type: AzureProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WaitForComplete
Indicates that this cmdlet waits for the operation to complete before it returns control to the Windows PowerShell console.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### TaskStatusInfo, TaskResponse
This cmdlet returns a **TaskStatusInfo** object if you specify the *WaitForComplete* parameter.
If you do not specify that parameter, it returns a **TaskResponse** object.

## NOTES

## RELATED LINKS

[Get-AzureStorSimpleAccessControlRecord](xref:ServiceManagement/Azure.StorSimple/v0.9.8/Get-AzureStorSimpleAccessControlRecord.md)

[Remove-AzureStorSimpleAccessControlRecord](xref:ServiceManagement/Azure.StorSimple/v0.9.8/Remove-AzureStorSimpleAccessControlRecord.md)

[Set-AzureStorSimpleAccessControlRecord](xref:ServiceManagement/Azure.StorSimple/v0.9.8/Set-AzureStorSimpleAccessControlRecord.md)

[Get-AzureStorSimpleJob](xref:ServiceManagement/Azure.StorSimple/v0.9.8/Get-AzureStorSimpleJob.md)


