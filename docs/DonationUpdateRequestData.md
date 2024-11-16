# NationbuilderClient::DonationUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**DonationUpdateRequestDataAttributes**](DonationUpdateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationUpdateRequestData.new(
  id: 1,
  type: donations,
  attributes: null
)
```

