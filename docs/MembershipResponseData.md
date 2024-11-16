# NationbuilderClient::MembershipResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**MembershipResponseDataAttributes**](MembershipResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipResponseData.new(
  id: 1,
  type: memberships,
  attributes: null
)
```

