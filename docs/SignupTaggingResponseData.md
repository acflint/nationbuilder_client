# NationbuilderClient::SignupTaggingResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SignupTaggingResponseDataAttributes**](SignupTaggingResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTaggingResponseData.new(
  id: 1,
  type: signup_taggings,
  attributes: null
)
```

