# NationbuilderClient::EventTicketLevelReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The ID of this ticket levels event | [optional] |
| **name** | **String** | Name of the ticket level | [optional] |
| **description** | **String** | Optional description of the ticket level displayed on event pages. | [optional] |
| **amount_in_cents** | **Integer** | Price of the ticket in cents, must be positive. | [optional] |
| **number** | **Integer** | This field indicates how many tickets a ticket level purchases. This is best used when you are giving a discounted rate for couples or group tickets. | [optional] |
| **tickets_sold** | **Integer** | The number of tickets already sold for this ticket level for the associated event | [optional] |
| **limit** | **Integer** | The number of tickets that can be purchased for this ticket level for the associated event across all ticket buyers | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventTicketLevelReadWriteAttributes.new(
  event_id: 1,
  name: VIP,
  description: VIP tickets get exclusive access to the VIP lounge.,
  amount_in_cents: 10000,
  number: 2,
  tickets_sold: 53,
  limit: 100
)
```

