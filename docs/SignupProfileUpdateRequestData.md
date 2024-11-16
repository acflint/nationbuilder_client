# NationbuilderClient::SignupProfileUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupProfileReadWriteAttributes**](SignupProfileReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupProfileUpdateRequestData.new(
  id: 1,
  type: signup_profiles,
  attributes: null
)
```

