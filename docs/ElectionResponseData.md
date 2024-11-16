# NationbuilderClient::ElectionResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**ElectionResponseDataAttributes**](ElectionResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ElectionResponseData.new(
  id: 1,
  type: elections,
  attributes: null
)
```

