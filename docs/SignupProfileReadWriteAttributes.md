# NationbuilderClient::SignupProfileReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signup_id** | **String** | The signup that belongs to this profile. | [optional] |
| **bio** | **String** | Content displayed on the profile page. | [optional] |
| **website** | **String** | Website belonging to the profile. Rendered alongside the bio. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupProfileReadWriteAttributes.new(
  signup_id: 1,
  bio: My bio,
  website: https://www.website.com
)
```

