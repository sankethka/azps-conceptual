---
external help file: Microsoft.AzureStack.Commands.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: DD06EF11-DE4C-44A6-BB2C-CBF00D5C0ECA
updated_at: 11/15/2016 9:52 PM
ms.date: 11/15/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Remove-AzureRMOffer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Remove-AzureRMOffer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4f706d2c1618dbb78e7ccf2f58b90336813a13f1/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Remove-AzureRMOffer.md
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

# Remove-AzureRMOffer

## SYNOPSIS
Removes the specified offer.

## SYNTAX

```
Remove-AzureRMOffer -Name <String> -ResourceGroup <String> [-SubscriptionId <Guid>] [-AdminUri <Uri>]
 [-Token <String>] [-ApiVersion <String>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [-PipelineVariable <String>]
```

## DESCRIPTION
The **Remove-AzureRmOffer** cmdlet removes the specified offer.

## EXAMPLES

### Example 1:
```
Remove-AzureRMOffer -Name "ComputeOffer" -ResourceGroup "ComputeOfferGroup"
```

This command removes the offer named ComputeOffer which is contained in the resource group named ComputeOfferGroup.

## PARAMETERS

### -AdminUri
Specifies the Azure Stack Resource Manager endpoint.
This parameter is not needed when you use the cmdlet against the Azure Stack environment configured against Azure Active Directory.
This parameter will be deprecated in future.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ApiVersion
Specifies the api version supported.
The value needs to be  2015-04-01.
This parameter will be deprecated in the future.

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

### -InformationAction
Specifies how this cmdlet responds to an information event.
The acceptable values for this parameter are:
* Continue
* Ignore
* Inquire
* SilentlyContinue
* Stop
* Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa
Accepted values: SilentlyContinue, Stop, Continue, Inquire

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

### -Name
Specifies the name of the Azure Resource Manager offer that this cmdlet removes.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PipelineVariable
Stores the value of the current pipeline element as a variable, for any named command as it flows through the pipeline.

```yaml
Type: String
Parameter Sets: (All)
Aliases: pv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroup
Specifies the name of the resource group that contains the offer.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionId
Specifies the service administrator subscription ID.
This parameter is not needed when you use the cmdlet against the Azure Stack environment configured against Azure Active Directory.
This parameter will be deprecated in a future release.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Token
Specifies the authentication token for the request.
This parameter is not needed when you use the cmdlet against the Azure Stack environment configured against Azure Active Directory.
This parameter will be deprecated in a future release.

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

## INPUTS

## OUTPUTS

### Microsoft.Azure.AzureOperationResponse

## NOTES

## RELATED LINKS

[Get-AzureRMOffer](xref:ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Get-AzureRMOffer.md)

[New-AzureRMOffer](xref:ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/New-AzureRMOffer.md)

[Set-AzureRMOffer](xref:ResourceManager/AzureRM.AzureStackAdmin/v1.2.6/Set-AzureRMOffer.md)
