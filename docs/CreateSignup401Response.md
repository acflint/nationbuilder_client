# NationbuilderClient::CreateSignup401Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **message** | **String** | Error message | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::CreateSignup401Response.new(
  code: unauthorized,
  message: You are not authorized to access this content. Your access token may be missing.\
                             The resource owner also may not have a permission level sufficient to grant access.
)
```

