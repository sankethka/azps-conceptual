---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 18866521-2C92-46AA-B633-5C0BE4E0C2B2
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/New-AzureAutomationCertificate.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/New-AzureAutomationCertificate.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/New-AzureAutomationCertificate.md
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

# New-AzureAutomationCertificate

## SYNOPSIS
Creates an Automation certificate.

## SYNTAX

```
New-AzureAutomationCertificate [-Name] <String> [-Description <String>] [-Password <SecureString>]
 [-Path] <String> [-Exportable] [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureAutomationCertificate** cmdlet creates a certificate in  AzureAutomation. 
Provide the path to a certificate file to upload.

## EXAMPLES

### Example 1: Create a new certificate
```
PS C:\>$password = ConvertTo-SecureString "PassWord!" -AsPlainText -Force
PS C:\> New-AzureAutomationCertificate -AutomationAccountName "Contoso17" -Name "MyCertificate" -Path "./cert.pfx" -Password $password -ResourceGroupName "ResourceGroup01"
```

These commands create a certificate named MyCertificate.
The first command creates the password for the certificate file that is used in the second command to create the certificate.

## PARAMETERS

### -AutomationAccountName
Specifies the name of the Automation account for which this cmdlet stores the certificate.

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

### -Description
Specifies a description for the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Exportable
Specifies whether the certificate can be exported.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name for the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Password
Specifies the password for the certificate file.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
Specifies the path to a script file that this cmdlet uploads. 
The file can be a .cer or a .pfx file.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

### -ResourceGroupName
The resource group name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.Commands.Automation.Model.CertificateInfo

## NOTES

## RELATED LINKS

[Get-AzureAutomationCertificate](xref:ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationCertificate.md)

[Remove-AzureAutomationCertificate](xref:ResourceManager/AzureRM.Automation/v0.9.8/Remove-AzureAutomationCertificate.md)

[Set-AzureAutomationCertificate](xref:ResourceManager/AzureRM.Automation/v0.9.8/Set-AzureAutomationCertificate.md)


