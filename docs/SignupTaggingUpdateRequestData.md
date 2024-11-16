# NationbuilderClient::SignupTaggingUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupTaggingReadWriteAttributes**](SignupTaggingReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTaggingUpdateRequestData.new(
  id: 1,
  type: signup_taggings,
  attributes: null
)
```

