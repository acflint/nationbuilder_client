# NationbuilderClient::DonationTrackingCodeUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**DonationTrackingCodeReadWriteAttributes**](DonationTrackingCodeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationTrackingCodeUpdateRequestData.new(
  id: 1,
  type: donation_tracking_codes,
  attributes: null
)
```

