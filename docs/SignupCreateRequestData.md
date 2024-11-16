# NationbuilderClient::SignupCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SignupCreateRequestDataAttributes**](SignupCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupCreateRequestData.new(
  type: signups,
  attributes: null
)
```

