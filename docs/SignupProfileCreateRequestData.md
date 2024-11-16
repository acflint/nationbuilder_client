# NationbuilderClient::SignupProfileCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SignupProfileReadWriteAttributes**](SignupProfileReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupProfileCreateRequestData.new(
  type: signup_profiles,
  attributes: null
)
```

