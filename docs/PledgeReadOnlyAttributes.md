# NationbuilderClient::PledgeReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Formatted amount of the pledge. | [optional] |
| **amount_left_in_cents** | **Integer** | Amount donated by the signup minus the amount pledged. | [optional][default to 0] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PledgeReadOnlyAttributes.new(
  amount: 5.00,
  amount_left_in_cents: 300,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

