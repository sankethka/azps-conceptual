---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkID=400628
schema: 2.0.0
ms.assetid: 86B51085-E23E-4A2E-A512-9098C908F3AD
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Import-AadrmTemplate.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Import-AadrmTemplate.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Import-AadrmTemplate.md
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

# Import-AadrmTemplate

## SYNOPSIS
Creates a custom Rights Management policy template.

## SYNTAX

```
Import-AadrmTemplate -Path <String> [<CommonParameters>]
```

## DESCRIPTION
The **Import-AadrmTemplate** cmdlet creates a custom Rights Management template for Azure Rights Management and sets its properties according to data contained in a template file.

Although you can configure Rights Management templates in the Azure classic portal, you must use PowerShell to export and import these templates.

The file you import must be a valid Rights Management template file that has been exported from Azure RMS or AD RMS. The file can have any file name extension.

If you import a template file identified by a GUID that matches the GUID of an existing template for the tenant, the original template is overwritten without warning. During the import operation, the GUID for the new template is set to the GUID in the input file, so the new template is valid to consume content protected with the imported template as long as Azure RMS has the necessary decryption keys.

If the name of the template in the import file matches the name of an existing template for the tenant in any language, you will have two templates with the same name.

You can store a maximum of 500 custom templates (published or archived) in Azure. If you can't import templates because you have reached this limit as a result of keeping many archived templates, consider exporting them to save the information locally and then removing these templates from Azure RMS.

For more information about custom templates, see [Configuring custom templates for Azure Rights Management](https://docs.microsoft.com/rights-management/deploy-use/configure-custom-templates) on the Microsoft documentation site.

## EXAMPLES

### Example 1: Import a template file
```
PS C:\>Import-AadrmTemplate -Path "C:\MyTemplates\MyFile.xml"
```

This command imports a template file.

## PARAMETERS

### -Path
Specifies the path to the template file to import.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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

[Add-AadrmTemplate](xref:AADRM/vlatest/Add-AadrmTemplate.md)

[Export-AadrmTemplate](xref:AADRM/vlatest/Export-AadrmTemplate.md)

[Get-AadrmTemplate](xref:AADRM/vlatest/Get-AadrmTemplate.md)

[Remove-AadrmTemplate](xref:AADRM/vlatest/Remove-AadrmTemplate.md)

[Configuring custom templates for Azure Rights Management](https://docs.microsoft.com/rights-management/deploy-use/configure-custom-templates)
