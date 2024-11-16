# NationbuilderClient::PledgeResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_in_cents** | **Integer** | The amount of cents pledged. | [optional][default to 0] |
| **is_private** | **Boolean** | Private pledges are not displayed on the site. | [optional][default to false] |
| **author_id** | **String** | The author of the pledge. | [optional] |
| **donation_tracking_code_id** | **String** | The associated donation tracking code. | [optional] |
| **page_id** | **String** | The page this pledge belongs to. | [optional] |
| **recruiter_id** | **String** | The recruiter of the pledge. | [optional] |
| **signup_id** | **String** | The signup is the person that made the pledge. | [optional] |
| **amount** | **String** | Formatted amount of the pledge. | [optional] |
| **amount_left_in_cents** | **Integer** | Amount donated by the signup minus the amount pledged. | [optional][default to 0] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PledgeResponseDataAttributes.new(
  amount_in_cents: 500,
  is_private: false,
  author_id: 1,
  donation_tracking_code_id: 1,
  page_id: 1,
  recruiter_id: 1,
  signup_id: 1,
  amount: 5.00,
  amount_left_in_cents: 300,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

