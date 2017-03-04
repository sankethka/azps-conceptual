---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkID=400631
schema: 2.0.0
ms.assetid: 7A85A84D-9022-452D-A428-FD0C9400C71A
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmTemplateProperty.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmTemplateProperty.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmTemplateProperty.md
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

# Set-AadrmTemplateProperty

## SYNOPSIS
Updates a property or properties of a Rights Management template.

## SYNTAX

```
Set-AadrmTemplateProperty -TemplateId <Guid> [-Names <Hashtable>] [-Descriptions <Hashtable>]
 [-RightsDefinitions <System.Collections.Generic.List`1[Microsoft.RightsManagementServices.Online.Admin.TemplateRightsDefinition]>]
 [-ContentExpirationOption <ContentExpirationType>] [-ContentExpirationDate <DateTime>]
 [-ContentValidityDuration <Int32>] [-LicenseValidityDuration <Int32>] [-Status <TemplateStatus>]
 [-ScopedIdentities <System.Collections.Generic.List`1[System.String]>] [-EnableInLegacyApps <Boolean>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AadrmTemplateProperty** cmdlet updates a property or properties of a custom Azure Rights Management template.

You can also update these properties in the Azure classic portal.

When you use this cmdlet, the template is identified by its GUID, which must refer to an existing custom Rights Management template. You cannot use this cmdlet to update the default templates.

You can use the [Get-AadrmTemplate](./Get-AadrmTemplate.md) cmdlet to get the template ID.

Important: When you update properties of a custom template, the existing settings for those properties will be overwritten (not supplemented) without warning, so be sure to specify all the settings that you need for the properties that you are updating.

As a best practice, back up the existing template before you run this cmdlet, by using the [Export-AadrmTemplate](./Export-AadrmTemplate.md) cmdlet. Then, if you need to revert to the original configuration, you can use the [Import-AadrmTemplate](./Import-AadrmTemplate.md) cmdlet to restore the template.

For more information about custom templates, including how to configure them in the Azure classic portal, see [Configuring custom templates for Azure Rights Management](https://docs.microsoft.com/rights-management/deploy-use/configure-custom-templates) on the Microsoft documentation site.

## EXAMPLES

### Example 1: Update a template's status
```
PS C:\>Set-AadrmTemplateProperty -TemplateID 28168524-29c3-44f1-9e11-ea6c60bb6428 -Status Published
```

This command sets a template status to Published.

### Example 2: Specify users and rights for a custom template
```
PS C:\> $r1 = New-AadrmRightsDefinition -EmailAddress marketing@contoso.com -Rights "VIEW","EXPORT"
PS C:\> $r2 = New-AadrmRightsDefinition -EmailAddress engineering@contoso.com -Rights "VIEW"
PS C:\>Set-AadrmTemplateProperty -TemplateID 28168524-29c3-44f1-9e11-ea6c60bb6522 -RightsDefinitions ($r1, $r2)
```

This example updates the existing custom template **New Launch - Confidential Content** for new users and rights. Whereas the existing template granted View and Export rights to the marketing department (which should not change), the engineering department must now also have View rights.

Because specifying the RightsDefinitions parameter overwrites the existing settings, the first rights definition object keeps the existing settings for marketing, and another rights definition object creates the new engineering department rights.

### Example 3: Add new users and rights to a custom template
```
PS C:\> $templateid = "7b1db17a-cb1a-41cf-bad7-b452f9d384c1"
PS C:\> [array]$r = New-AadrmRightsDefinition -EmailAddress pattiful@contoso.com -Rights "DOCEDIT", "EXTRACT"
PS C:\> $r += New-AadrmRightsDefinition -EmailAddress evannar@vanarsdelltd.com -Rights "VIEW"
PS C:\> $CurrentRightsDefinitions = [array]((get-aadrmtemplate -templateid $templateid).RightsDefinitions)
PS C:\> $ResultingRightsDefinitions = $CurrentRightsDefinitions + $r
PS C:\> Set-AadrmTemplateProperty -TemplateId $templateid -RightsDefinition $ResultingRightsDefinitions
```

This set of command adds two new users and their different rights to an existing template, without overwriting the existing users and rights already defined in the template.

The new users and their rights are pattiful.contoso.com (a user within the organization) who is granted DOCEDIT and EXTRACT rights; and evannar@vanarsdelltd.com (a user from another organization) who is granted VIEW rights. These users and their rights are added to rights definition objects using an array, which is then added to the existing rights definitions for the template.

## PARAMETERS

### -ContentExpirationDate
Specifies the date on which content protected with the template expires. 

Use this parameter only if *ContentExpirationOption* is set to OnDate.

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

### -ContentExpirationOption
Specifies the type of content expiration for content protected with the template.

The acceptable values for this parameter are:
- Never.
Indicates that content is available indefinitely.
- OnDate.
Indicates that content expires at a certain fixed date.
- AfterDays.
Indicates that content will be available for the indicated number of days after it is protected.

```yaml
Type: ContentExpirationType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentValidityDuration
Specifies the number of days from the first day of protection after which content protected with the template expires.

Use this parameter only if the *ContentExpirationOption* parameter is set to AfterDays.

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

### -Descriptions
Specifies a list of descriptions for the template.

Create names and descriptions for multiple locale IDs using the hash-table syntax in Windows PowerShell. There must be at least one name/description pair. The locale IDs for names and descriptions must match each other.

$descriptions = @{}

$descriptions\[1033\] = "This content is confidential and should not be shared externally"

$descriptions\[1034\] = "Este contenido es confidencial y no debe ser compartido fuera de la organizacion"

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableInLegacyApps
Determines the behavior of a departmental template in applications that do not support departmental templates.

If set to True and the template is a departmental template, all users trying to protect content from an application that does not support departmental templates will see the template and therefore be able to select it, regardless of whether the users are members of the template's target scope or not.

If set to False, no users see and therefore cannot select the template in applications that do not support departmental templates, even if the users are members of the template's target scope.

This setting has no effect on templates that are not departmental templates and also has no effect on applications that natively support departmental templates.

The Azure Information Protection client and the Rights Management sharing application support departmental templates whereas Exchange Outlook Web Access and Exchange ActiveSync are examples of applications that do not currently support departmental templates. For these Exchange applications (and all other applications that cannot support departmental templates), you must decide whether all users can select a departmental template from the list of available templates, or no users can select a departmental template from the list.

This setting does not affect whether a user can access content that is protected by a departmental template; it only affects the ability for a user to select the template itself.

If you have applications that do not yet natively support departmental templates, you can use a [custom RMS template download script](http://go.microsoft.com/fwlink/?LinkId=524506) or other tools to deploy these templates to the local RMS client folder. Then, these applications will correctly display the departmental templates:
 -- For Office 2010, the client folder is %localappdata%\Microsoft\DRM\Templates.
 -- From a client computer that has downloaded all the templates, you can copy and then paste the template files to other computers.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LicenseValidityDuration
Specifies the validity period of use licenses for content that is protected with this template. The value is specified as the number of days that content is available offline after a use license is acquired (0-9999). During this period users can re-open content they previously accessed without requiring an Internet network connection.

Reducing this value gives more control to document owners by helping ensure that content that has been revoked or for which the policy has changed cannot be accessed for too long after these changes.

Increasing this value gives more freedom to users to access the content without requiring an Internet network connection.

To specify unlimited access, use -1.

To specify that a use license must be obtained each time the protected content is accessed and that content is available only with an Internet connection, specify 0.

Each organization has a maximum use license validity time, which is 30 days by default and can be configured by using the [Set-AadrmMaxUseLicenseValidityTime](./Set-AadrmMaxUseLicenseValidityTime.md). The value that you specify for the *LicenseValidityDuration* parameter must be lower than that value.

This setting can also be overridden by a user for a document when they use the RMS sharing application, and select the **Allow me to instantly revoke access to these documents** option, which effectively sets the use license validity time to 0. When there are different values like this, Azure RMS uses the most restrictive value.

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

### -Names
Specifies a list of names for the template.

Create names and descriptions for multiple locale IDs by using the hash-table syntax in Windows PowerShell. There must be at least one name/description pair. The locale IDs for names and descriptions must match each other.

$names = @{}

$names\[1033\] = "Confidential content"

$names\[1034\] = "Contenido confidencial"

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RightsDefinitions
Specifies a list of rights definition objects that are specified by using the [New-AadrmRightsDefinition](./New-AadrmRightsDefinition.md) cmdlet.

These rights definition objects express the rights to grant individual users or groups to content that is protected by applying the template.

```yaml
Type: System.Collections.Generic.List`1[Microsoft.RightsManagementServices.Online.Admin.TemplateRightsDefinition]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScopedIdentities
Lists the users by email address (account or group) that can see and therefore select departmental templates from applications.

For the specified users to see the templates, the application must support departmental templates or the *EnableInLegacyApps* parameter must be set to True.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
Specifies the status of the template. Valid values are: Published or Archived.

Archived templates are available to consume content previously protected but are not visible to users.

Published templates are distributed to users and made available to protect content.

```yaml
Type: TemplateStatus
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateId
Specifies the GUID of a Rights Management template.

```yaml
Type: Guid
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

[Get-AadrmTemplate](xref:AADRM/vlatest/Get-AadrmTemplate.md)

[Get-AadrmTemplateProperty](xref:AADRM/vlatest/Get-AadrmTemplateProperty.md)

[Azure Rights Management](https://docs.microsoft.com/rights-management/deploy-use/configure-custom-templates)
