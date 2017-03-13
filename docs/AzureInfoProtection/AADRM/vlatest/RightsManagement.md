---
Module Name: AADRM
Module Guid: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
Download Help Link: Please enter FwLink manually
Help Version: Please enter version of help manually (X.X.X.X) format
Locale: en-US
ms.assetid: 0B91D740-D2BD-4D57-9E21-C582C9BE2CCA
updated_at: 2/13/2017 4:04 AM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/RightsManagement.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/RightsManagement.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/6ca3a334d2d345bf1565d13869b0587b50bde3b6/Azure%20Information%20Protection/AADRM/vlatest/RightsManagement.md
uid: AADRM/vlatest/RightsManagement.md
ms.topic: conceptual
ms.prod: powershell
ms.technology: Azure Powershell
author: cabailey
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: cabailey
open_to_public_contributors: False
ms.service: rights-management
---

# AADRM Module
## Description
This topic displays help topics for the cmdlets that administer the Azure Rights Management (Azure RMS) service.

These PowerShell cmdlets for Azure RMS let you administer the Azure Rights Management service from the command line. Although this enables automation, it also supports reliable and repeated processes to help reduce administrative overheads. In addition,  advanced configurations and some operations require PowerShell.

For more information about when you must use these PowerShell cmdlets and to see groupings of cmdlets by administration tasks, see [Administering Azure Rights Management by Using Windows PowerShell](https://technet.microsoft.com/library/jj585027.aspx).

>**Tip**
>
>If you do not see the cmdlet or options that are documented, make sure that you have [downloaded the latest version of the module](https://technet.microsoft.com/library/jj585012.aspx).
>
>The current version is **2.7.0.0**. To check the version you have installed, run: (Get-Module aadrm -ListAvailable).Version

The .dll file for this module is *Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll*.

## Azure Rights Management Cmdlets
### [Add-AadrmKey](./Add-AadrmKey.md)
Adds a legacy customer-managed tenant key for Rights Management, and makes it the active key.


### [Add-AadrmRoleBasedAdministrator](./Add-AadrmRoleBasedAdministrator.md)
Grants administrative rights to Rights Management.


### [Add-AadrmSuperUser](./Add-AadrmSuperUser.md)
Adds a super user to Rights Management.


### [Add-AadrmTemplate](./Add-AadrmTemplate.md)
Creates a Rights Management template.


### [Clear-AadrmSuperUserGroup](./Clear-AadrmSuperUserGroup.md)
Removes the super user group for your organization.


### [Connect-AadrmService](./Connect-AadrmService.md)
Connects to Rights Management.


### [Convert-AadrmKeyToKeyVault](./Convert-AadrmKeyToKeyVault.md)
Changes the location of a legacy customer-managed key in Azure Rights Management with the location of a customer-managed key in Azure Key Vault.


### [Disable-AadrmDevicePlatform](./Disable-AadrmDevicePlatform.md)
Disables Rights Management support for device platforms.


### [Disable-AadrmDocumentTrackingFeature](./Disable-AadrmDocumentTrackingFeature.md)
Disables document tracking for Rights Management.


### [Disable-AadrmIPCv3Service](./Disable-AadrmIPCv3Service.md)
Disables the MSIPC v3 platform for Rights Management.


### [Disable-AadrmSuperUserFeature](./Disable-AadrmSuperUserFeature.md)
Disables the super user feature.


### [Disable-AadrmUsageLogFeature](./Disable-AadrmUsageLogFeature.md)
Disables the usage log for Rights Management.


### [Disable-Aadrm](./Disable-Aadrm.md)
Deactivates Rights Management.


### [Disconnect-AadrmService](./Disconnect-AadrmService.md)
Disconnects from Rights Management.


### [Enable-AadrmDevicePlatform](./Enable-AadrmDevicePlatform.md)
Enables Rights Management support for device platforms.


### [Enable-AadrmDocumentTrackingFeature](./Enable-AadrmDocumentTrackingFeature.md)
Enables document tracking for Rights Management.


### [Enable-AadrmIPCv3Service](./Enable-AadrmIPCv3Service.md)
Enables the MSIPC v3 platform for Rights Management.


### [Enable-AadrmSuperUserFeature](./Enable-AadrmSuperUserFeature.md)
Enables the super user feature for Rights Management.


### [Enable-AadrmUsageLogFeature](./Enable-AadrmUsageLogFeature.md)
Enables usage logging for Rights Management.


### [Enable-Aadrm](./Enable-Aadrm.md)
Activates Rights Management for your organization.


### [Export-AadrmTemplate](./Export-AadrmTemplate.md)
Exports the properties of a rights policy template to a file.


### [Get-AadrmAdminLog](./Get-AadrmAdminLog.md)
Generates logs for all Rights Management  administrative commands.


### [Get-AadrmConfiguration](./Get-AadrmConfiguration.md)
Gets the Rights Management configuration of your tenant.


### [Get-AadrmDevicePlatform](./Get-AadrmDevicePlatform.md)
Gets the device platforms in your organization that support Rights Management.


### [Get-AadrmDocumentTrackingFeature](./Get-AadrmDocumentTrackingFeature.md)
Indicates whether document tracking is enabled or disabled for Rights Management.


### [Get-AadrmIPCv3Service](./Get-AadrmIPCv3Service.md)
Displays whether the MSIPC v3 service is enabled or disabled for Rights Management.


### [Get-AadrmKeys](./Get-AadrmKeys.md)
Lists all tenant keys associated with your Rights Management tenant.


### [Get-AadrmMaxUseLicenseValidityTime](./Get-AadrmMaxUseLicenseValidityTime.md)
Gets the maximum validity time for Rights Management use licenses.


### [Get-AadrmMigrationUrl](./Get-AadrmMigrationUrl.md)
Gets the migration URL for Rights Management.


### [Get-AadrmOnboardingControlPolicy](./Get-AadrmOnboardingControlPolicy.md)
Gets user on-boarding control policy for Rights Management.


### [Get-AadrmRoleBasedAdministrator](./Get-AadrmRoleBasedAdministrator.md)
Gets the role-based administrators for Rights Management.


### [Get-AadrmSuperUserFeature](./Get-AadrmSuperUserFeature.md)
Gets the status of the super user feature for Rights Management.


### [Get-AadrmSuperUserGroup](./Get-AadrmSuperUserGroup.md)
Gets the super user group for Rights Management.


### [Get-AadrmSuperUser](./Get-AadrmSuperUser.md)
Gets the super users for Rights Management.


### [Get-AadrmTemplateProperty](./Get-AadrmTemplateProperty.md)
Gets the properties of a Rights Management template.


### [Get-AadrmTemplate](./Get-AadrmTemplate.md)
Gets a list of Rights Management templates.


### [Get-AadrmUsageLogFeature](./Get-AadrmUsageLogFeature.md)
Gets the status of usage logging for Rights Management.


### [Get-AadrmUsageLogLastCounterValue](./Get-AadrmUsageLogLastCounterValue.md)
Gets the last counter value for the usage log.


### [Get-AadrmUsageLogStorageAccount](./Get-AadrmUsageLogStorageAccount.md)
Gets the location for usage logs.


### [Get-AadrmUsageLog](./Get-AadrmUsageLog.md)
Downloads Rights Management logs to local storage.


### [Get-AadrmUserLog](./Get-AadrmUserLog.md)
Downloads Rights Management user logs to local storage.


### [Get-Aadrm](./Get-Aadrm.md)
Gets the activation status of Rights Management for your organization.


### [Import-AadrmTemplate](./Import-AadrmTemplate.md)
Creates a custom Rights Management policy template.


### [Import-AadrmTpd](./Import-AadrmTpd.md)
Imports a TPD from AD RMS for Rights Management.


### [New-AadrmRightsDefinition](./New-AadrmRightsDefinition.md)
Creates a Rights Definition object for Rights Management.


### [Remove-AadrmRoleBasedAdministrator](./Remove-AadrmRoleBasedAdministrator.md)
Removes administrative rights from Rights Management.


### [Remove-AadrmSuperUser](./Remove-AadrmSuperUser.md)
Removes a super user from Rights Management.


### [Remove-AadrmTemplate](./Remove-AadrmTemplate.md)
Deletes a Rights Management rights policy template.


### [Set-AadrmMaxUseLicenseValidityTime](./Set-AadrmMaxUseLicenseValidityTime.md)
Sets the maximum validity time for Rights Management use licenses.


### [Set-AadrmMigrationUrl](./Set-AadrmMigrationUrl.md)
Sets the migration URL for Rights Management.


### [Set-AadrmOnboardingControlPolicy](./Set-AadrmOnboardingControlPolicy.md)
Sets the user on-boarding control policy for Rights Management.


### [Set-AadrmSuperUserGroup](./Set-AadrmSuperUserGroup.md)
Sets the super user group for Rights Management.


### [Set-AadrmTemplateProperty](./Set-AadrmTemplateProperty.md)
Updates a property or properties of a Rights Management template.


### [Set-AadrmUsageLogStorageAccount](./Set-AadrmUsageLogStorageAccount.md)
Sets the location for Rights Management usage logs.


### [Use-AadrmKeyVaultKey](./Use-AadrmKeyVaultKey.md)
Tells Rights Management to use a customer-managed tenant key in Azure Key Vault.



