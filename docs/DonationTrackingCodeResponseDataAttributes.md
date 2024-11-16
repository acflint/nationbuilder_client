# NationbuilderClient::DonationTrackingCodeResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the tracking code. | [optional] |
| **slug** | **String** | A unique identifier for the tracking code. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationTrackingCodeResponseDataAttributes.new(
  name: Summer Banquet 2022,
  slug: summer_banquet_2022,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

