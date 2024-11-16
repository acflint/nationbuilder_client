# NationbuilderClient::SignupResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupResponseDataAttributes**](SignupResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupResponseData.new(
  id: 1,
  type: signups,
  attributes: null
)
```

