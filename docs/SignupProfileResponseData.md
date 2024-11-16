# NationbuilderClient::SignupProfileResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupProfileReadWriteAttributes**](SignupProfileReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupProfileResponseData.new(
  id: 1,
  type: signup_profiles,
  attributes: null
)
```

