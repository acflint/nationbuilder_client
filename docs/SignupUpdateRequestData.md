# NationbuilderClient::SignupUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupCreateRequestDataAttributes**](SignupCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupUpdateRequestData.new(
  id: 1,
  type: signups,
  attributes: null
)
```

