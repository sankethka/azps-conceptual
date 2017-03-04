---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400609
schema: 2.0.0
ms.assetid: 6E60214B-4051-48B3-A59C-5E4587A0025B
updated_at: 2/12/2017 9:57 PM
ms.date: 2/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmDevicePlatform.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmDevicePlatform.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/e4c765ba645ee6c466dd1ff7182695aa9e59fb44/Azure%20Information%20Protection/AADRM/vlatest/Get-AadrmDevicePlatform.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure Powershell
author: cabailey
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: cabailey
open_to_public_contributors: False
ms.service: rights-management
---

# Get-AadrmDevicePlatform

## SYNOPSIS
Gets the device platforms in your organization that support Rights Management.

## SYNTAX

### AllPlatforms
```
Get-AadrmDevicePlatform [-All] [<CommonParameters>]
```

### Platforms
```
Get-AadrmDevicePlatform [-Windows] [-WindowsStore] [-WindowsPhone] [-Mac] [-iOS] [-Android] [-Web]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AadrmDevicePlatform** cmdlet gets the device platforms that Azure Rights Management supports for your organization. For information about supported device platforms, see the [Enable-AadrmDevicePlatform](./Enable-AadrmDevicePlatform.md) cmdlet.

You must use PowerShell to view this configuration; you cannot view this configuration by using a management portal.

## EXAMPLES

### Example 1: Get specific device platforms that support Rights Management
```
PS C:\>Get-AadrmDevicePlatform -WindowsPhone -WindowStore
       Key                                                       Value
       -----                                                     ------
       WindowsStore                                              True
       WindowsPhone                                              True
```

This command determines whether Windows Phone and Windows Store device platforms in your organization support Rights Management.

### Example 2: Get all device platforms that support Rights Management
```
PS C:\>Get-AadrmDevicePlatform -All
```

This command determines which of all device platforms in your organization support Rights Management.

## PARAMETERS

### -All
Indicates that the cmdlet specifies all device platforms. The cmdlet gets the Rights Management support status of all device platforms.

```yaml
Type: SwitchParameter
Parameter Sets: AllPlatforms
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Android
Indicates that the cmdlet specifies the Android device platform. The cmdlet gets the Rights Management support status for the specified device platform.

```yaml
Type: SwitchParameter
Parameter Sets: Platforms
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -iOS
Indicates that the cmdlet specifies the iOS device platform. The cmdlet gets the Rights Management support status for the specified device platform.

```yaml
Type: SwitchParameter
Parameter Sets: Platforms
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Mac
Indicates that the cmdlet specifies the Macintosh operating system device platform. The cmdlet gets the Rights Management support status for the specified device platform.

```yaml
Type: SwitchParameter
Parameter Sets: Platforms
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Web
Indicates that the cmdlet specifies the web device platform. The cmdlet gets the Rights Management support status for the specified device platform.

```yaml
Type: SwitchParameter
Parameter Sets: Platforms
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Windows
Indicates that the cmdlet specifies the Windows operating system device platform. The cmdlet gets the Rights Management support status for the specified device platform.

```yaml
Type: SwitchParameter
Parameter Sets: Platforms
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WindowsPhone
Indicates that the cmdlet specifies the Windows Phone device platform. The cmdlet gets the Rights Management support status for the specified device platform.

```yaml
Type: SwitchParameter
Parameter Sets: Platforms
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WindowsStore
Indicates that the cmdlet specifies the Windows Store device platform. The cmdlet gets the Rights Management support status for the specified device platform.

```yaml
Type: SwitchParameter
Parameter Sets: Platforms
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

[Disable-AadrmDevicePlatform](xref:AADRM/vlatest/Disable-AadrmDevicePlatform.md)

[Enable-AadrmDevicePlatform](xref:AADRM/vlatest/Enable-AadrmDevicePlatform.md)
