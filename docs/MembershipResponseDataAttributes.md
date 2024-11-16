# NationbuilderClient::MembershipResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grace_period_num_time_periods** | **Integer** | Grace period to allow a signup to renew their membership after it expires. | [optional] |
| **grace_period_time_period_type** | **String** | Unit of time to measure grace period. | [optional] |
| **expires_on** | **String** | When the membership expires. | [optional] |
| **membership_type_id** | **String** | The ID of the membership type. | [optional] |
| **signup_id** | **String** | The ID of the signup. | [optional] |
| **status** | **String** | The membership status. | [optional] |
| **status_reason** | **String** | Short text explaining why the membership is at its current status. | [optional] |
| **started_at** | **String** | When the membership went into effect. | [optional] |
| **created_at** | **String** |  | [optional] |
| **suspended_at** | **String** | When the membership was suspended. | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MembershipResponseDataAttributes.new(
  grace_period_num_time_periods: 7,
  grace_period_time_period_type: days,
  expires_on: 2024-10-04,
  membership_type_id: 1,
  signup_id: 1,
  status: active,
  status_reason: Does not want to pay anymore,
  started_at: 2019-10-26T10:00:00-04:00,
  created_at: 2019-10-26T10:00:00-04:00,
  suspended_at: 2022-10-11,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

