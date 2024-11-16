# NationbuilderClient::MembershipTypeResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**MembershipTypeResponseDataAttributes**](MembershipTypeResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipTypeResponseData.new(
  id: 1,
  type: membership_types,
  attributes: null
)
```

