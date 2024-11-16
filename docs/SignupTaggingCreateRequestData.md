# NationbuilderClient::SignupTaggingCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SignupTaggingReadWriteAttributes**](SignupTaggingReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTaggingCreateRequestData.new(
  type: signup_taggings,
  attributes: null
)
```

