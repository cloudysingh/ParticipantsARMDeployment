# AutoManage

This module deploys an AutoManage account and associates VM with it.

## Resource Types

| Resource Type | Api Version |
| :-- | :-- |
| `Microsoft.Authorization/roleAssignments` | 2020-04-01-preview |
| `Microsoft.Automanage/accounts` | 2020-06-30-preview |
| `Microsoft.Compute/virtualMachines/providers/configurationProfileAssignments` | 2020-06-30-preview|
| `Microsoft.Resources/deployments` | 2019-10-01 |
| `Microsoft.Resources/resourceGroups` | 2019-10-01 |

## Parameters

| Parameter Name | Type | Default Value | Possible values | Description |
| :-- | :-- | :-- | :-- | :-- |
| `assignmentDeployName` | string | [concat('AssignmentDeployment-', parameters('vMName'))] |  | Required. The name of the deployment - assignment Id |
| `autoManageAccountDeployName` | string | [concat(parameters('autoManageAccountName'), '-', utcNow('yyyyMMddHHmmss'))] |  | Required. The name of the deployment name |
| `location` | string |  |  | Required. The location of automanage |
| `autoManageAccountName` | string |  |  | Required. The name of automanage account |
| `autoManageAccountResourceGroup` | string |  |  | Required. The resource group name where automanage will be created |
| `autoManageAccountSubscriptionId` | string |  |  | Required. The Subscription id where automanage will be created |
| `configurationProfile` | string | Production | System.Object[] | Required. The configuration profile of automanage, by default it is the best practices - prod |
| `createAutoManageAccount` | bool | True |  | Required. The flag to confirm creation of automanage |
| `vMName` | string |  |  |  |
| `vMResourceGroup` | string |  |  | Required. The name of the VM resourcegroup |
| `cuaId` | string | "" |  | Optional. Customer Usage Attribution id (GUID). This GUID must be previously registered. |

## Outputs

| Output Name | Type | Description |
| :-- | :-- | :-- |
| `autoManageAccountName` | string | The Name of the Auto Manage Account. |
| `autoManageAccountResourceGroup` | string | The name of the Resource Group the AutoManage Account was created in. |
| `autoManageAccountResourceId` | string | The Resource Id of the AutoManage account |

## Considerations

*N/A*

## Additional resources

- [ResouRceGRoups](https://docs.microsoft.com/en-us/azure/templates/Microsoft.Resources/2019-10-01/resourceGroups)
- [Deployments](https://docs.microsoft.com/en-us/azure/templates/Microsoft.Resources/2019-10-01/deployments)
- [RoleAssignments](https://docs.microsoft.com/en-us/azure/templates/Microsoft.Authorization/2020-04-01-preview/roleAssignments)
- [RoleAssignments](https://docs.microsoft.com/en-us/azure/templates/Microsoft.Authorization/2020-04-01-preview/roleAssignments)
- [Deployments](https://docs.microsoft.com/en-us/azure/templates/Microsoft.Resources/2019-10-01/deployments)
