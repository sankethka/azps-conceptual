---
title: Overview of Azure PowerShell modules | Microsoft Docs
description: An introduction to the PowerShell modules available to manage Azure resources.
services: azure
author: sdwheeler
manager: carmonm
ms.assetid: ee92f7b5-b84e-4939-a516-709b6abb0fa7
ms.product: azure
ms.service: powershell
ms.devlang: powershell
ms.topic: reference
ms.date: 03/09/2017
ms.author: sewhee
---

# Options for managing Azure using PowerShell

There are several PowerShell module packages available to assist you with management of your Azure
resources. These Azure PowerShell modules allow you to automate repetitive IT admin tasks to save
you time and resources.

## Azure PowerShell

Azure PowerShell provides cmdlets most of the services and features of Azure. Azure PowerShell
consists of the following modules:

* [Azure Resource Manager](/azps-concepts/resourcemanager/overview.md)

    Azure Resource Manager is the preferred deployment model. This module allows you to manage your
    Azure resources using this model.

* [Azure Service Management](/azps-concepts/servicemanagement/)

    Azure Service Management is the classic deployment model. This module is used to manage older
    resources that cannot be managed using the Azure Resource Manager model. Any new deployments
    should be done using the Azure Resource Manger methods.

## Azure Active Directory (AzureAD) PowerShell

AzureAD PowerShell is used to manage their Azure Active Directory. AzureAD consists of the
following modules:

* [AzureAD (v2)](/azps-concepts/azuread/)

    The newer AzureAD V2 module implements the Graph API in PowerShell en provides a wide range of
    capabilities. All new script development should use this module.

* [MSOnline (v1)](/azps-concepts/msonline/)

    The old MSOnline module can still be used for functionality that is not yet available in the
    AzureAD module. We will begin deprecating the older MSOnline module when all of the
    functionality of that module has been migrated to the newer AzureAD module.

## Azure Information Protection (AIP) Powershell

The AIP PowerShell lets you administer the Azure Rights Management service. AIP PowerShell consists
of the following modules:

* [AADRM](/azps-concepts/aadrm/)

    These cmdlets let you administer the Azure Rights Management service. For more information
    about when you must use these PowerShell cmdlets and to see groupings of cmdlets by
    administration tasks, see
    [Administering Azure Rights Management by Using Windows PowerShell](/information-protection/deploy-use/administer-powershell).

* [AzureInformationProtection](/azps-concepts/azureinformationprotection/)

    The AIP cmdlets are installed with the [Azure Information Protection client](/information-protection/rms-client/aip-client).
    This module replaces the RMS Protection Tool and the AD RMS Bulk Protection Tool. These cmdlets
    can be used with the Azure Information Protection service, the Azure Rights Management service
    (Azure RMS), and Active Directory Rights Management Services (AD RMS).

## Azure Service Fabric PowerShell

Service Fabric is a distributed systems platform that makes it easy to package, deploy, and manage
scalable and reliable microservices and addresses the significant challenges in developing and
managing cloud applications.

* [ServiceFabric](/azps-concepts/servicefabric/)

    The Service Fabric PowerShell module is installed with the
    [Service Fabric SDK, runtime, and tools](/azure/service-fabric/service-fabric-get-started).

## Azure ElasticDB PowerShell

Elastic Database Jobs (preview) enables you to reliably run a Transact-SQL (T-SQL) script or apply
a data-tier application package (DACPAC) across a group of Azure SQL databases. Using these
cmdlets, you can easily perform administrative operations such as schema changes, credentials
management, reference data updates, performance data collection, and tenant (customer) telemetry
collection.

* [ElasticDatabaseJobs](/azps-concepts/elasticdatabasejobs/)

## Learn more

To use these cmdlets, you should have a good understanding of PowerShell and how it works. You
should also have some experience with Microsoft Azure as the cmdlets you will use perform the same
functions available through the portal GUI. You’ll also need to know basic PowerShell scripting
techniques.

If you need to brush up on PowerShell before you get started, see
[Scripting with PowerShell](https://technet.microsoft.com/library/bb978526.aspx).

You can also watch this video:
[PowerShell Basics: (Part 1) Getting Started with PowerShell](https://channel9.msdn.com/Blogs/Taste-of-Premier/azps-conceptsBasicsPart1).

If you are new to Azure, see [the Azure documentation](https://docs.microsoft.com/azure/).

Watch this video:
[Take Control of the Cloud with the Microsoft Azure PowerShell Cmdlets](https://channel9.msdn.com/Events/TechEd/NorthAmerica/2013/WAD-B305#fbid=).
