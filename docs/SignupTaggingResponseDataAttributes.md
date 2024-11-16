# NationbuilderClient::SignupTaggingResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signup_id** | **String** | The signup that was tagged. | [optional] |
| **tag_id** | **String** | The tag assigned to the signup. | [optional] |
| **created_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTaggingResponseDataAttributes.new(
  signup_id: 1,
  tag_id: 1,
  created_at: 2019-10-26T10:00:00-04:00
)
```

