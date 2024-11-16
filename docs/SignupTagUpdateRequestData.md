# NationbuilderClient::SignupTagUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupTagReadWriteAttributes**](SignupTagReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTagUpdateRequestData.new(
  id: 1,
  type: signup_tags,
  attributes: null
)
```

