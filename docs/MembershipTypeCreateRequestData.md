# NationbuilderClient::MembershipTypeCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**MembershipTypeReadWriteAttributes**](MembershipTypeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipTypeCreateRequestData.new(
  type: membership_types,
  attributes: null
)
```

