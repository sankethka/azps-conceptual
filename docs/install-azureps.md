---
title: Get started with Azure PowerShell | Microsoft Docs
description: How to install and configure Azure PowerShell for first time use.
services: azure
author: sdwheeler
manager: carmonm
ms.assetid: DF332CD7-E3E5-4CC1-8C01-380B2065193C
ms.product: azure
ms.service: powershell
ms.devlang: powershell
ms.topic: reference
ms.date: 03/06/2017
---

# Install and configure Azure PowerShell

Azure PowerShell is a set of modules that provide cmdlets to manage Azure with Windows PowerShell.
You can use the cmdlets to create, test, deploy, and manage solutions and services delivered through
the Azure platform. In most cases, the cmdlets can be used for the same tasks as the Azure Portal,
such as creating and configuring cloud services, virtual machines, virtual networks, and web apps.

## Step 1: Install Azure PowerShell

Installing Azure PowerShell from the [PowerShell Gallery](https://www.powershellgallery.com/) is
the preferred method of installation. For alternative methods of installation, see the
[Other installation methods](#other-installation-methods) section of this document: .

Installing items from the PowerShell Gallery requires the PowerShellGet module. Make sure you have
the appropriate version of PowerShellGet for your operating system.

|OS Version|Download instructions|
|---|---|
|Windows 10 and Windows Server 2016|Built into Windows Management Framework (WMF) 5.0 included in the OS|
|Windows 7, Windows 8, Windows 8.1, Windows Server 2012, and Windows Server 2013 R2|[Download the latest WMF package](http://go.microsoft.com/fwlink/?LinkId=398175)|
|Previous versions of Windows running PowerShell 3 or PowerShell 4|[Download the PackageManagement PowerShell Modules](http://go.microsoft.com/fwlink/?LinkID=746217)|

Installing Azure PowerShell from the PowerShell Gallery requires elevated priviledges. Run the following command from an elevated PowerShell session:

```powershell
# Install the Azure Resource Manager modules from the PowerShell Gallery
Install-Module AzureRM
```

The AzureRM module is a rollup module for the Azure Resource Manager cmdlets. The definition of the
AzureRM module includes a list all of the dependent AzureRM service modules and their versions.
This list assures that the proper version of each module is installed for the specified version of
the rollup module. When you install the AzureRM module, any Azure Resource Manager module that has
not previously been installed will be downloaded and installed from the PowerShell Gallery.

Once the module is installed, you need to load the module into your PowerShell session. Modules are loaded using the `Import-Module` cmdlet, as follows:

```powershell
Import-Module AzureRM
```

## Step 2: Connect to an Azure account

You can run the cmdlets from the standard Windows PowerShell console, or from PowerShell Integrated
Scripting Environment (ISE). The cmdlets need your subscription information so they can manage your
services. You can purchase an Azure subscription if you don't already have one. For instructions,
see [How to buy Azure](http://go.microsoft.com/fwlink/p/?LinkId=320795).

Sign on interactively:

1. Type `Login-AzureRmAccount`

2. Type the email address and password associated with your account. Azure authenticates and saves
   the credential information, and then closes the window.

--OR--

Sign into your work or school account:

```powershell
$cred = Get-Credential
Login-AzureRmAccount -Credential $cred
```

> [!NOTE]
> This non-interactive log in method only works with a work or school account. A work or
> school account is a user that is managed by your work or school, and defined in the Azure Active
> Directory instance for your work or school.
>
> For more information on signing up for Microsoft Azure with a work or school account, see [Sign up
> for Microsoft Azure as an Organization](/azure/active-directory/sign-up-organization.md).
>
> For more information about authentication and subscription management in Azure, see
> [Manage Accounts, Subscriptions, and Administrative Roles](/azure/active-directory/role-based-access-control-configure.md).

## Step 3: Run Azure PowerShell cmdlets

Once you have signed in to an Azure account, you can use the Azure PowerShell cmdlets to access and
manager the resources in your subscription.

### Commands to help you get started

```powershell
# Load the Azure PowerShell module
Import-Module AzureRM

# To log in to Azure Resource Manager
Login-AzureRmAccount

# You can also use a specific Tenant if you would like a faster log in experience
# Login-AzureRmAccount -TenantId xxxx

# To view all subscriptions for your account
Get-AzureRmSubscription

# To select a default subscription for your current session.
# This is useful when you have multiple subscriptions.
Get-AzureRmSubscription -SubscriptionName "your sub" | Select-AzureRmSubscription

# View your current Azure PowerShell session context
# This session state is only applicable to the current session and will not affect other sessions
Get-AzureRmContext

# To select the default storage context for your current session
Set-AzureRmCurrentStorageAccount -ResourceGroupName "your resource group" -StorageAccountName "your storage account name"

# View your current Azure PowerShell session context
# Note: the CurrentStorageAccount is now set in your session context
Get-AzureRmContext

# To list all of the blobs in all of your containers in all of your accounts
Get-AzureRmStorageAccount | Get-AzureStorageContainer | Get-AzureStorageBlob
```

## <a id="Help"></a>Getting help

These resources provide help for specific cmdlets:

* Release notes for migrating to a newer release can be found at:
  [https://github.com/Azure/azure-powershell/tree/dev/documentation/release-notes](https://github.com/Azure/azure-powershell/tree/dev/documentation/release-notes).
* For help from the community, try these popular forums:
    + [Azure forum on MSDN](http://go.microsoft.com/fwlink/p/?LinkId=320212)
    + [Stackoverflow](http://go.microsoft.com/fwlink/?LinkId=320213)

## Other installation methods

Azure PowerShell has multiple installation methods. Using PowerShellGet with the PowerShell Gallery
is the preferred method. Azure PowerShell can be installed using the Web Platform Installer (WebPI)
or by using the MSI file available from
[GitHub](https://github.com/Azure/azure-powershell/releases/latest).

### Install using the Web Platform Installer

Installing the latest Azure PowerShell from WebPI is the same as it was for previous versions.
Download the [Azure PowerShell WebPI package](http://aka.ms/webpi-azps) and start the install.

> [!NOTE]
> If you have previously installed Azure modules from the PowerShell Gallery, the installer
> will automatically remove them. This simplifies your environment by ensuring that only one version
> of Azure PowerShell is installed. However, there are scenarios where you may need multiple
> versions installed at the same time.
>
> PowerShell Gallery modules installs modules in
> `$env:ProgramFiles\WindowsPowerShell\Modules`. In contrast, the WebPI installer will
> install the Azure modules in `$env:ProgramFiles(x86)\Microsoft SDKs\Azure\PowerShell\`.
>
> If an error occurs during install, you can manually remove the Azure* folders in your
> `$env:ProgramFiles\WindowsPowerShell\Modules` folder, and try the installation again.

Once the installation completes, your `$env:PSModulePath` setting should include the directories
containing the Azure PowerShell cmdlets.

```powershell
# To make sure the Azure PowerShell module is available after you install
Get-Module -ListAvailable Azure* | Select-Object Name, Version, Path
```

> [!NOTE]
> There is a known issue that can occur when installing from WebPI. If your computer requires a
restart due to system updates or other installations, it may cause updates to `$env:PSModulePath` to
fail to include the path where Azure PowerShell is installed.

When attempting to load or execute cmdlets after installation, you can receive the following error
message:

```
PS C:\> Login-AzureRmAccount
Login-AzureRmAccount : The term 'Login-AzureRmAccount' is not recognized as the name of a cmdlet,
function, script file, or operable program. Check the spelling of the name, or if a path was
included, verify that the path is correct and try again.
At line:1 char:1
+ Login-AzureRmAccount
+ ~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (Login-AzureRmAccount:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
```

This can be corrected by restarting the machine or importing the module using the fully-qualified
path. For example:

```powershell
Import-Module "$env:ProgramFiles(x86)\Microsoft SDKs\Azure\PowerShell\AzureRM.psd1"
```

### Install using the MSI Package

Azure PowerShell can be installed using the MSI file available from
[GitHub](https://github.com/Azure/azure-powershell/releases/latest). If you have installed previous
versions of Azure modules the installer will automatically remove them. The MSI package installs
modules in `$env:ProgramFiles\WindowsPowerShell\Modules` but does not create version specific
folders.

### Installing module versions side-by-side

You should always install the latest available version of Azure PowerShell. But if you have scripts written against an earlier
version, you should check for breaking changes in the newer version.

Version 2.1.0 (and version 1.2.6 for AzureStack) are the first module versions designed to be
installed and used side-by-side. You must use the PowerShellGet method of installation to install
multiple versions.

The following commands illustrate how to install multiple versions of Azure PowerShell:

```powershell
Install-Module -Name AzureRM -RequiredVersion 3.6.0
Install-Module -Name AzureRM -RequiredVersion 1.2.6
```

Only one version of the module can be loaded in a PowerShell session. You must open a new
PowerShell window and use `Import-Module` to import a specific version of the AzureRM cmdlets:

```powershell
Import-Module AzureRM -RequiredVersion 3.6.0**
```

> [!NOTE]
> Versions prior to v2.1.0 (other than v1.2.6) do not work well side-by-side with other Azure
PowerShell module versions. When loading an earlier version of the Azure PowerShell modules using a
command like the one above, incompatible versions of the **AzureRM.Profile** module will be loaded,
resulting in the cmdlets asking you to log in whenever you execute a cmdlet, even after you have
logged in.

### Updating to a new version of Azure PowerShell

PowerShellGet has the ability to update an installed module when a new version has been released to
the PowerShell Gallery. Using the `Update-Module` cmdlet, you can download and install the latest
version. By default, the new version will be installed side-by-side with any other versions that have been installed. If you want to replace the current version with the new version you must use the `-Force` parameter. For example:

```powershell
Update-Module -Name AzureRM -Force
```

> [!NOTE]
> The Azure and AzureRM modules share common dependencies. So if you use both modules you should
update both.

## Learn More

See the following resources to learn more about using the cmdlets:

* For basic instructions about using Windows PowerShell, see
  [Using Windows PowerShell](https://msdn.microsoft.com/powershell/scripting/getting-started/fundamental/using-windows-powershell).
* For sample scripts and instructions to help you learn to use scripting to manage Azure, see the
  [Script Center](https://gallery.technet.microsoft.com/scriptcenter/site/search?f%5B0%5D.Type=RootCategory&f%5B0%5D.Value=WindowsAzure&f%5B0%5D.Text=Windows%20Azure).