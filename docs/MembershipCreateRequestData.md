# NationbuilderClient::MembershipCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**MembershipCreateRequestDataAttributes**](MembershipCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipCreateRequestData.new(
  type: memberships,
  attributes: null
)
```

