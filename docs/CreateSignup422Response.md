# NationbuilderClient::CreateSignup422Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** | Error message explaining conflicts on the create request | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::CreateSignup422Response.new(
  code: unprocessable_entity,
  message: civicrm_id is already taken on signup 1
)
```

