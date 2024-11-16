# NationbuilderClient::MembershipWriteOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_author_id** | **String** | Signup ID to be used as the author of the Activity log of this API action | [optional] |
| **trigger_autoresponses** | **Boolean** | Whether updating the membership status to be \&quot;expired\&quot; or \&quot;grace period\&quot; should result in an autoresponse being sent to the member. Defaults to false. | [optional][default to false] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipWriteOnlyAttributes.new(
  activity_author_id: 1,
  trigger_autoresponses: false
)
```

