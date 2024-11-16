# NationbuilderClient::SignupTagCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SignupTagReadWriteAttributes**](SignupTagReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTagCreateRequestData.new(
  type: signup_tags,
  attributes: null
)
```

