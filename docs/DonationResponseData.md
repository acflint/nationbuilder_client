# NationbuilderClient::DonationResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**DonationResponseDataAttributes**](DonationResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationResponseData.new(
  id: 1,
  type: donations,
  attributes: null
)
```

