# NationbuilderClient::DonationCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**DonationCreateRequestDataAttributes**](DonationCreateRequestDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationCreateRequestData.new(
  type: donations,
  attributes: null
)
```

