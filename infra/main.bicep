// Ep 1 template. The suffix keeps the storage account name globally unique.
param location string = resourceGroup().location

resource storageAccount 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name: 'stactions${uniqueString(resourceGroup().id)}'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
