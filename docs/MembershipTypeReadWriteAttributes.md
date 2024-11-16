# NationbuilderClient::MembershipTypeReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Short explanation of the membership type. | [optional] |
| **expiration_warning_num_time_periods** | **Integer** | Amount of time to warn a signup ahead of their membership expiration. | [optional][default to 7] |
| **expiration_warning_time_period_type** | **String** | The unit of time used for expiration_warning_num_time_periods. | [optional][default to &#39;days&#39;] |
| **grace_period_num_time_periods** | **Integer** | Grace period to allow a signup to renew their membership after it expires. | [optional][default to 7] |
| **grace_period_time_period_type** | **String** | Unit of time to measure grace period. | [optional][default to &#39;days&#39;] |
| **page_id** | **String** | The ID of the page to renew the membership. | [optional] |
| **name** | **String** | Membership type name. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipTypeReadWriteAttributes.new(
  description: Sustaining members keep our mission going,
  expiration_warning_num_time_periods: 7,
  expiration_warning_time_period_type: days,
  grace_period_num_time_periods: 3,
  grace_period_time_period_type: days,
  page_id: 1,
  name: Sustainer
)
```

