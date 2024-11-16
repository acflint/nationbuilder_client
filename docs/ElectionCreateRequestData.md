# NationbuilderClient::ElectionCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**ElectionReadWriteAttributes**](ElectionReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ElectionCreateRequestData.new(
  type: elections,
  attributes: null
)
```

