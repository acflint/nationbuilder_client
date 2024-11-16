# NationbuilderClient::ElectionResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | Two letter country code. | [optional] |
| **donation_maximum_in_cents** | **Integer** | Maximum donation amount in cents. | [optional][default to 0] |
| **election_at** | **String** | The date the election is held. | [optional] |
| **election_cycle** | **String** | The election cycle. | [optional] |
| **election_period** | **String** | The election period. | [optional][default to &#39;unknown&#39;] |
| **registration_ends_at** | **String** | The date the registration ends. | [optional] |
| **state** | **String** | Two letter abbreviation of the state. | [optional] |
| **donation_maximum** | **String** | Maximum donation amount. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ElectionResponseDataAttributes.new(
  country_code: US,
  donation_maximum_in_cents: 500,
  election_at: 2022-11-08,
  election_cycle: 2022,
  election_period: primary,
  registration_ends_at: 2022-10-15,
  state: NY,
  donation_maximum: 5.00,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

