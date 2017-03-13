---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400623
schema: 2.0.0
ms.assetid: D4615C3C-F6B3-42EF-BE69-C4CD4B6BD5A2
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmUsageLogStorageAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmUsageLogStorageAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmUsageLogStorageAccount.md
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

# Set-AadrmUsageLogStorageAccount

## SYNOPSIS
Sets the location for Rights Management usage logs.

## SYNTAX

```
Set-AadrmUsageLogStorageAccount -StorageAccount <String> -AccessKey <SecureString> [<CommonParameters>]
```

## DESCRIPTION
The **Set-AadrmUsageLogStorageAccount** cmdlet sets the Azure storage location for usage logs for Azure Rights Management.

You must use PowerShell to set this information; you cannot do this action by using a management portal.

This cmdlet should be used only if you have usage logs prior to the usage logging change in February 2016. After this date, the only Windows PowerShell cmdlet that you need for Azure RMS usage logging is Get-AadrmUserLog.

For more information about usage logging, see [Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage) on the Microsoft documentation site.

## EXAMPLES

### Example 1: Set the log location
```
PS C:\>$AccessKey = ConvertTo-SecureString "aeDpsMswiYNGNwOaCkOrfPiDtIpjRREosiXNLKrG" -AsPlainText -Force
PS C:\> Set-AadrmUsageLogStorageAccount -AccessKey $AccessKey -StorageAccount "RmsStorageAccount"
```

The first command uses the [ConvertTo-SecureString](http://go.microsoft.com/fwlink/?LinkID=113291) cmdlet to convert your access key to a secure string, and then stores it in the **$AccessKey** variable.
For more information, type `Get-Help ConvertTo-SecureString`.

The second command specifies the location for your usage logs.

## PARAMETERS

### -AccessKey
Specifies your access key as a secure string.

To view your access key, connect to the Azure Management Portal.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -StorageAccount
Specifies a storage account.

To obtain the name of this account, use the Management Portal.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AadrmUsageLogStorageAccount](xref:AADRM/vlatest/Get-AadrmUsageLogStorageAccount.md)

[ConvertTo-SecureString](http://go.microsoft.com/fwlink/?LinkID=113291)

[Logging and analyzing Azure Rights Management usage](https://docs.microsoft.com/rights-management/deploy-use/log-analyze-usage)
