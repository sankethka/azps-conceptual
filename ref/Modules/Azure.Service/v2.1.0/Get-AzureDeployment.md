---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 07563C91-2F58-4038-8375-A86FB8E0AB20
updated_at: 1/14/2017 6:46 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/Get-AzureDeployment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/Get-AzureDeployment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/6555eb8cb2408f85e337832ad5b9d0adb06ce475/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/Get-AzureDeployment.md
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

# Get-AzureDeployment

## SYNOPSIS
Gets details of a deployment.

## SYNTAX

```
Get-AzureDeployment [-ServiceName] <String> [[-Slot] <String>] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureDeployment** cmdlet gets details of an Azure deployment.
Specify the name of the Azure service and the slot of the deployment.

## EXAMPLES

### Example 1: Get details for a production deployment
```
PS C:\> Get-AzureDeployment -ServiceName "ContosoService"
```

This command returns the details of the deployment for the service named ContosoService.
This command does not specify a slot.
Therefore, the command uses the default value of Production.

### Example 2: Get details for a staging deployment
```
PS C:\> Get-AzureDeployment -ServiceName "ContosoService" -Slot "Staging"
```

This command returns the details of the staging deployment of ContosoService.

## PARAMETERS

### -ServiceName
Specifies the name of the service.

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

### -Slot
Specifies the environment of the deployment.
Valid values are: Staging or Production.
The default value is Production.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

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

[Get-AzureDeploymentEvent](xref:ServiceManagement/Azure.Service/v2.1.0/Get-AzureDeploymentEvent.md)

[Move-AzureDeployment](xref:ServiceManagement/Azure.Service/v2.1.0/Move-AzureDeployment.md)

[New-AzureDeployment](xref:ServiceManagement/Azure.Service/v2.1.0/New-AzureDeployment.md)

[Remove-AzureDeployment](xref:ServiceManagement/Azure.Service/v2.1.0/Remove-AzureDeployment.md)

[Set-AzureDeployment](xref:ServiceManagement/Azure.Service/v2.1.0/Set-AzureDeployment.md)


