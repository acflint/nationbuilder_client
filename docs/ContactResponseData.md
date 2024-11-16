# NationbuilderClient::ContactResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**ContactResponseDataAttributes**](ContactResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ContactResponseData.new(
  id: 1,
  type: contacts,
  attributes: null
)
```

