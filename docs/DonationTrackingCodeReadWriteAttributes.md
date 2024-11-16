# NationbuilderClient::DonationTrackingCodeReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the tracking code. | [optional] |
| **slug** | **String** | A unique identifier for the tracking code. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationTrackingCodeReadWriteAttributes.new(
  name: Summer Banquet 2022,
  slug: summer_banquet_2022
)
```

