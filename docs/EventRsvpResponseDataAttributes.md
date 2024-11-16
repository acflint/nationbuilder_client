# NationbuilderClient::EventRsvpResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_in_cents** | **Integer** | The cost of the RSVP in cents. | [optional] |
| **attendee** | **Boolean** | The signup is attending the event. | [optional] |
| **canceled** | **Boolean** | The RSVP was canceled. | [optional] |
| **email** | **String** | The email address of the attendee. | [optional] |
| **event_id** | **String** | The associated event. | [optional] |
| **first_name** | **String** | The attendee&#39;s first name. | [optional] |
| **guests_count** | **Integer** | Number of guests on the RSVP. | [optional] |
| **last_name** | **String** | The attendee&#39;s last name. | [optional] |
| **page_id** | **String** | The associated page. | [optional] |
| **prepaid** | **Boolean** | The RSVP has already been paid. | [optional] |
| **private** | **Boolean** | The RSVP is private. | [optional] |
| **tickets_count** | **Integer** | Number of tickets sold with this RSVP. | [optional] |
| **volunteer** | **Boolean** | The attendee is a volunteer. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventRsvpResponseDataAttributes.new(
  amount_in_cents: 350,
  attendee: false,
  canceled: false,
  email: lucille.ball@example.com,
  event_id: 1,
  first_name: Lucille,
  guests_count: 19,
  last_name: Ball,
  page_id: 1,
  prepaid: false,
  private: false,
  tickets_count: 45,
  volunteer: false,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

