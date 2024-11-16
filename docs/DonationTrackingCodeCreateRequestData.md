# NationbuilderClient::DonationTrackingCodeCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**DonationTrackingCodeReadWriteAttributes**](DonationTrackingCodeReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationTrackingCodeCreateRequestData.new(
  type: donation_tracking_codes,
  attributes: null
)
```

