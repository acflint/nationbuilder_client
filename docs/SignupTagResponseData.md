# NationbuilderClient::SignupTagResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupTagResponseDataAttributes**](SignupTagResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTagResponseData.new(
  id: 1,
  type: signup_tags,
  attributes: null
)
```

