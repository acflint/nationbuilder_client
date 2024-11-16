# NationbuilderClient::DonationTrackingCodeResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**DonationTrackingCodeResponseDataAttributes**](DonationTrackingCodeResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationTrackingCodeResponseData.new(
  id: 1,
  type: donation_tracking_codes,
  attributes: null
)
```

