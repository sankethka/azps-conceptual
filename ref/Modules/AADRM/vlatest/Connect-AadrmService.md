---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: https://go.microsoft.com/fwlink/?LinkId=400595
schema: 2.0.0
ms.assetid: 857D8EFC-9D6E-4756-A9A2-B90FF8E02A1F
updated_at: 2/13/2017 4:04 AM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Connect-AadrmService.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Connect-AadrmService.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/6ca3a334d2d345bf1565d13869b0587b50bde3b6/Azure%20Information%20Protection/AADRM/vlatest/Connect-AadrmService.md
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

# Connect-AadrmService

## SYNOPSIS
Connects to Rights Management.

## SYNTAX

### Credential (Default)
```
Connect-AadrmService [-Credential <PSCredential>] [-TenantId <Guid>] [<CommonParameters>]
```

### AccessToken
```
Connect-AadrmService [-AccessToken <String>] [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Connect-AadrmService** cmdlet connects you to the Azure Rights Management service for your tenant so that you can then run administrative commands for this service. This cmdlet can also be used by a partner company that manages your tenant.

You must run this cmdlet before you can run the other Rights Management cmdlets in this module.

To connect to the Azure Rights Management service, use an account that is one of the following:
- A global admin for your Office 365 tenant.
- A global administrator for your Azure tenant. However, this account cannot be a Microsoft account (MSA) or from another Azure tenant.
- A user account from your tenant that has been granted administrative rights to Azure Rights Management by using the [Add-AadrmRoleBasedAdministrator](./Add-AadrmRoleBasedAdministrator) cmdlet.

Tip: If you are not prompted for your credentials, and you see an error message such as **Cannot use this feature without credentials**, verify that Internet Explorer is configured to use Windows integrated authentication. If this setting is not enabled, enable it, restart Internet Explorer, and then retry authentication to the Rights Management service.

## EXAMPLES

### Example 1: Connect to Azure RMS and be prompted for your user name and other credentials
```
PS C:\> Connect-AadrmService
```

This command connects to the Rights Management service. This is the simplest way to connect to Azure Rights Management, by running the cmdlet with no parameters.

You are prompted for your user name and password. If your account is configured to use multi-factor authentication, you are then prompted for your alternative method of authentication, and then connected to the service.

If your account is configured to use multi-factor authentication, you must use this method to connect to Azure RMS.

### Example 2: Connect to Azure RMS with stored credentials
```
PS C:\>$AdminCredentials = Get-Credential "Admin@aadrm.contoso.com"
PS C:\> Connect-AadrmService -Credential $AdminCredentials
```

The first command creates a **PSCredential** object and stores your specified user name and password in the **$AdminCredentials** variable. When you run this command, you are prompted for the password for the user name that you specified.

The second command connects to the Rights Management service by using the credentials stored in **$AdminCredentials**. If you disconnect from the service and reconnect while the variable is still in use, simply rerun the second command.

### Example 3: Connect to Azure RMS with a token
```
PS C:\>[Reflection.Assembly]::LoadFile("C:\Windows\system32\WindowsPowerShell\v1.0\Modules\AADRM\Microsoft.IdentityModel.Clients.ActiveDirectory.dll")
PS C:\> $clientId='90f610bf-206d-4950-b61d-37fa6fd1b224';
PS C:\> $resourceId = 'https://api.aadrm.com/';
PS C:\> $clientId='90f610bf-206d-4950-b61d-37fa6fd1b224';
PS C:\> $userName='admin@contoso.com';
PS C:\> $password='Passw0rd!';
PS C:\> $redirectUri = new-object System.Uri("https://aadrm.com/AADRMAdminPowershell");
PS C:\> $authority = "https://login.microsoftonline.com/common";
PS C:\> $authContext = New-Object Microsoft.IdentityModel.Clients.ActiveDirectory.AuthenticationContext($authority);
PS C:\> $userCreds = New-Object Microsoft.IdentityModel.Clients.ActiveDirectory.UserCredential($userName, $password);
PS C:\> $authenticationResult = $authContext.AcquireToken($resourceId,$clientId,$userCreds);
PS C:\> Import-module aadrm
PS C:\> Connect-Aadrmservice -AccessToken $authenticationResult.AccessToken
```

This example shows how you could connect to Azure RMS by using the *AccessToken* parameter, which lets you authenticate without a prompt. This connection method requires you to specify the client ID '90f610bf-206d-4950-b61d-37fa6fd1b224' and the resource ID 'https://api.aadrm.com/'. After the connection is open, you can then run the Azure RMS administrative commands that you need.

After you confirm that these commands result in successfully connecting to the Azure RMS service, you could run them non-interactively, for example, from a script.

Note that for illustration purposes, this example uses the user name of "admin@contoso.com" with the password of "Passw0rd!". In a production environment when you use this connection method non-interactively, use additional methods to secure the password so that it is not stored in clear text. For example, use the **ConvertTo-SecureString** command or use Key Vault to store the password as a secret.

## PARAMETERS

### -AccessToken
Use this parameter to connect to Azure RMS by using a token that you acquire from Azure Active Directory, using the client ID '90f610bf-206d-4950-b61d-37fa6fd1b224' and the resource ID 'https://api.aadrm.com/'. This connection method lets you sign in to the Azure RMS service non-interactively.

To get the access token, make sure that the account that you use from your tenant is not using multi-factor authentication (MFA). See Example 3 for how you might do this.

You cannot use this parameter with the *Credential* parameter.

```yaml
Type: String
Parameter Sets: AccessToken
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
Specifies a **PSCredential** object. To obtain a **PSCredential** object, use the [Get-Credential](http://go.microsoft.com/fwlink/?LinkID=293936) cmdlet. For more information, type `Get-Help Get-Cmdlet`.

The cmdlet prompts you for a password.

You cannot use this parameter with the *AccessToken* parameter and do not use it if your account is configured to use multi-factor authentication (MFA).

```yaml
Type: PSCredential
Parameter Sets: Credential
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TenantId
Specifies the tenant GUID.The cmdlet connects to Rights Management for the tenant that you specify by GUID.

If you do not specify this parameter, the cmdlet connects to the tenant that your account belongs to.

```yaml
Type: Guid
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

## NOTES

## RELATED LINKS

[Get-Credential](https://go.microsoft.com/fwlink/?LinkID=293936)

[Disconnect-AadrmService](xref:AADRM/vlatest/Disconnect-AadrmService.md)
