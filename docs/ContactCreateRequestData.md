# NationbuilderClient::ContactCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**ContactReadWriteAttributes**](ContactReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ContactCreateRequestData.new(
  type: contacts,
  attributes: null
)
```

