# NationbuilderClient::MembershipUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**MembershipCreateRequestDataAttributes**](MembershipCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipUpdateRequestData.new(
  id: 1,
  type: memberships,
  attributes: null
)
```

