---
external help file: Microsoft.WindowsAzure.Commands.Storage.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 059CF4A7-DB04-4FF5-91DA-31D38608B99C
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/Storage/Azure.Storage/v1.1.6/Set-AzureStorageContainerStoredAccessPolicy.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/Storage/Azure.Storage/v1.1.6/Set-AzureStorageContainerStoredAccessPolicy.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/Storage/Azure.Storage/v1.1.6/Set-AzureStorageContainerStoredAccessPolicy.md
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

# Set-AzureStorageContainerStoredAccessPolicy

## SYNOPSIS
Sets a stored access policy for an Azure storage container.

## SYNTAX

```
Set-AzureStorageContainerStoredAccessPolicy [-Container] <String> [-Policy] <String> [-Permission <String>]
 [-StartTime <DateTime>] [-ExpiryTime <DateTime>] [-NoStartTime] [-NoExpiryTime]
 [-Context <AzureStorageContext>] [-ServerTimeoutPerRequest <Int32>] [-ClientTimeoutPerRequest <Int32>]
 [-ConcurrentTaskCount <Int32>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [-PipelineVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureStorageContainerStoredAccessPolicy** cmdlet sets a stored access policy for an Azure storage container.

## EXAMPLES

### Example 1: Set a stored access policy in a storage container
```
PS C:\>Set-AzureStorageContainerStoredAccessPolicy -Container "MyContainer" -Policy "Policy06"
```

This command sets an access policy named Policy06 for storage container named MyContainer.

## PARAMETERS

### -Container
Specifies the Azure storage container name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: N, Name

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Policy
Specifies a stored access policy, which includes the permissions for this Shared Access Signature (SAS) token.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Permission
Specifies the level of public access to this container.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTime
Specifies the time at which the stored access policy becomes valid.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpiryTime
Specifies the time at which the stored access policy becomes invalid.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoStartTime
Sets the start time to be $Null.

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

### -NoExpiryTime
Indicates that the access policy has no expiration date.

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

### -Context
Specifies an Azure storage context.
To obtain a storage context, use the New-AzureStorageContext cmdlet.

```yaml
Type: AzureStorageContext
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ServerTimeoutPerRequest
Specifies the client-side time-out interval, in seconds, for one service request.
If the previous call fails in the specified interval, this cmdlet retries the request.
If this cmdlet does not receive a successful response before the interval elapses, this cmdlet returns an error.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientTimeoutPerRequest
Specifies the client-side time-out interval, in seconds, for one service request.
If the previous call fails in the specified interval, this cmdlet retries the request.
If this cmdlet does not receive a successful response before the interval elapses, this cmdlet returns an error.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConcurrentTaskCount
Specifies the maximum concurrent network calls.
You can use this parameter to limit the concurrency to throttle local CPU and bandwidth usage by specifying the maximum number of concurrent network calls.
The specified value is an absolute count and is not multiplied by the core count.
This parameter can help reduce network connection problems in low bandwidth environments, such as 100 kilobits per second.
The default value is 10.

```yaml
Type: Int32
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
* Continue
* Ignore
* Inquire
* SilentlyContinue
* Stop
* Suspend

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

### -PipelineVariable
Stores the value of the current pipeline element as a variable, for any named command as it flows through the pipeline.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureStorageContainerStoredAccessPolicy](xref:Storage/Azure.Storage/v1.1.6/Get-AzureStorageContainerStoredAccessPolicy.md)

[New-AzureStorageContext](xref:Storage/Azure.Storage/v1.1.6/New-AzureStorageContext.md)

[New-AzureStorageContainerStoredAccessPolicy](xref:Storage/Azure.Storage/v1.1.6/New-AzureStorageContainerStoredAccessPolicy.md)

[Remove-AzureStorageContainerStoredAccessPolicy](xref:Storage/Azure.Storage/v1.1.6/Remove-AzureStorageContainerStoredAccessPolicy.md)
