# NationbuilderClient::MembershipTypeUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**MembershipTypeReadWriteAttributes**](MembershipTypeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipTypeUpdateRequestData.new(
  id: 1,
  type: membership_types,
  attributes: null
)
```

