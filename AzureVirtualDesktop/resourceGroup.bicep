targetScope = 'subscription'

param location string

param tags object

param resourceGroupName string

resource RG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupName
  location: location
  tags: tags
  properties: {}
}

output resourceGroupName string = RG.name
output resourceGroupId string = RG.id
