---
external help file: Microsoft.WindowsAzure.Commands.StorSimple.dll-Help.xml
ms.assetid: 71CFCA9D-198E-481A-BB85-159477F25322
online version: 
schema: 2.0.0
updated_at: 1/10/2017 4:41 PM
ms.date: 1/10/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.1.0/Set-AzureStorSimpleAccessControlRecord.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.1.0/Set-AzureStorSimpleAccessControlRecord.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/9684c1f009f3792937fd2c56f696dc26f8986a83/azureps-cmdlets-docs/ServiceManagement/Azure.StorSimple/v3.1.0/Set-AzureStorSimpleAccessControlRecord.md
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

# Set-AzureStorSimpleAccessControlRecord

## SYNOPSIS
Updates the IQN of an access control record.

## SYNTAX

```
Set-AzureStorSimpleAccessControlRecord [-ACRName] <String> [-IQNInitiatorName] <String> [-WaitForComplete]
 [[-NewName] <String>] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureStorSimpleAccessControlRecord** cmdlet updates the iSCSI qualified name (IQN) of an existing access control record.

## EXAMPLES

### Example 1: Update an access control record
```
PS C:\> Set-AzureStorSimpleAccessControlRecord -ACRName "Acr10" -IQNInitiatorName "IqnUpdated" -WaitForComplete
VERBOSE: ClientRequestId: e4766335-f302-40e0-93bf-fad7aa488ae6_PS
VERBOSE: ClientRequestId: cfdbbd67-6ba5-4238-b743-b88f604079b9_PS
VERBOSE: About to run a task to update your Access Control Record! 
VERBOSE: ClientRequestId: d5cf2793-0ab5-40ff-ab6f-43e21bc4c0a4_PS


JobId        : 89502523-52fc-4ce2-b2d4-cb8c6692fb60
JobResult    : Succeeded
JobStatus    : Completed
ErrorCode    : 
ErrorMessage : 
JobSteps     : {}

VERBOSE: The job created for your update operation has completed successfully. 
VERBOSE: ClientRequestId: cbd47519-3a3c-4365-b097-0fb7551c48ee_PS
GlobalId            : 
InitiatorName       : IqnUpdated
InstanceId          : 9bcfbc83-e196-4688-9016-827f51515c24
Name                : Acr10
OperationInProgress : None
VolumeCount         : 0
```

This command updates the access control record named Acr10 for the iSCSI initiator named IqnUpdated.
This command specifies the *WaitForComplete* parameter, and, therefore, the command waits until the operation is complete, and then returns a **TaskStatusInfo** object.

## PARAMETERS

### -ACRName
Specifies a name of the access control record to modify.

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

### -IQNInitiatorName
Specifies the IQN of the iSCSI initiator to which this cmdlet provides access for the volume.

```yaml
Type: String
Parameter Sets: (All)
Aliases: IQN

Required: True
Position: 1
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
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NewName
Specifies a new name for access control record.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
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

### None

## OUTPUTS

### TaskStatusInfo, TaskResponse
This cmdlet returns a **TaskStatusInfo** object if you specify the *WaitForComplete* parameter.
If you do not specify that parameter, it returns a **TaskResponse** object.

## NOTES

## RELATED LINKS

[Get-AzureStorSimpleAccessControlRecord](xref:ServiceManagement/Azure.StorSimple/v3.1.0/Get-AzureStorSimpleAccessControlRecord.md)

[New-AzureStorSimpleAccessControlRecord](xref:ServiceManagement/Azure.StorSimple/v3.1.0/New-AzureStorSimpleAccessControlRecord.md)

[Remove-AzureStorSimpleAccessControlRecord](xref:ServiceManagement/Azure.StorSimple/v3.1.0/Remove-AzureStorSimpleAccessControlRecord.md)


