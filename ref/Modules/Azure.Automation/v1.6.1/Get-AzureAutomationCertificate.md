---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 6CE1E007-65F6-49B9-BFC6-70D9A488D50C
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/Get-AzureAutomationCertificate.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/Get-AzureAutomationCertificate.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/Get-AzureAutomationCertificate.md
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

# Get-AzureAutomationCertificate

## SYNOPSIS
Gets an Azure Automation certificate.

## SYNTAX

### ByAll (Default)
```
Get-AzureAutomationCertificate [-AutomationAccountName] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

### ByCertificateName
```
Get-AzureAutomationCertificate [-Name] <String> [-AutomationAccountName] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationCertificate** cmdlet gets one or more Microsoft Azure Automation certificates.
By default, all certificates are returned.
To get a specific certificate, specify its name.

## EXAMPLES

### Example 1: Get all certificates
```
PS C:\> Get-AzureAutomationCertificate -AutomationAccountName "Contoso17"
```

This command gets all certificates in the Azure Automation account named Contoso17.

### Example 2: Get a certificate
```
PS C:\> Get-AzureAutomationCertificate -AutomationAccountName "Contoso17" -Name "MyUserCertificate"
```

This command gets the certificate named MyUserCertificate.

## PARAMETERS

### -AutomationAccountName
Specifies the name of the automation account with the certificate.

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

### -Name
Specifies the name of a certificate to retrieve.

```yaml
Type: String
Parameter Sets: ByCertificateName
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
In-memory profile.

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

### Microsoft.Azure.Commands.Automation.Model.CertificateInfo

## NOTES

## RELATED LINKS

[New-AzureAutomationCertificate](xref:ServiceManagement/Azure.Automation/v1.6.1/New-AzureAutomationCertificate.md)

[Remove-AzureAutomationCertificate](xref:ServiceManagement/Azure.Automation/v1.6.1/Remove-AzureAutomationCertificate.md)

[Set-AzureAutomationCertificate](xref:ServiceManagement/Azure.Automation/v1.6.1/Set-AzureAutomationCertificate.md)


