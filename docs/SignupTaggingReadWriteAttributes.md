# NationbuilderClient::SignupTaggingReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signup_id** | **String** | The signup that was tagged. | [optional] |
| **tag_id** | **String** | The tag assigned to the signup. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTaggingReadWriteAttributes.new(
  signup_id: 1,
  tag_id: 1
)
```

