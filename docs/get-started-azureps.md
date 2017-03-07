---
title: Get started with Azure PowerShell | Microsoft Docs
description: This is a running history of changes made to Azure PowerShell in each release.
services: azure
author: sdwheeler
manager: carmonm
ms.assetid:
ms.product: azure
ms.service: powershell
ms.devlang: powershell
ms.topic: reference
ms.date: 03/06/2017
ms.author: sewhee
---

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

## Step 4: Run Azure PowerShell cmdlets

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
