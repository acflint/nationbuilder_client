# NationbuilderClient::EventResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_rsvps** | **Boolean** | Allows people to RSVP for the event. If set to false, the event will display, but people will not be able to submit an RSVP to it. | [optional] |
| **additional_rsvps_count** | **Integer** | Number of offline RSVPs to add to event&#39;s total capacity | [optional] |
| **allow_guests** | **Boolean** | Allows RSVP to enter the number of guests they will bring to the event. | [optional] |
| **attending_count** | **Integer** | The number of attendees for the current event. | [optional] |
| **auto_response_broadcaster_id** | **String** | ID of the broadcaster that the event&#39;s auto response will be sent by | [optional] |
| **auto_response_content** | **String** | Email content of the auto response sent people RSVP-ing to the event. | [optional] |
| **auto_response_subject** | **String** | Email subject of the auto response sent people RSVP-ing to the event. | [optional] |
| **capacity_count** | **Integer** | The number of RSVPs allowed. If set to 0, there is no limit to number of RSVPs. | [optional] |
| **contact_email** | **String** | The email address of the contact person. | [optional] |
| **contact_email_private** | **Boolean** | Flag used to hide the contact person&#39;s email address on public event pages. | [optional] |
| **contact_name** | **String** | The name of the contact person for the event. | [optional] |
| **contact_phone_number** | **String** | The phone number of the contact person. | [optional] |
| **contact_phone_private** | **Boolean** | Flag used to hide the contact person&#39;s phone number on public event pages. | [optional] |
| **content** | **String** | Content displayed on the public event page | [optional] |
| **donation_tracking_code_id** | **String** | ID of the donation tracking code to be associated with ticket purchases for the event | [optional] |
| **duration** | **Integer** | Duration of the event in seconds. Updates the end_at time of the event. | [optional] |
| **event_form_address** | **String** | Attribute used to set address input requirements for RSVPs | [optional] |
| **event_form_phone** | **String** | Attribute used to set phone number input requirements for RSVPs | [optional] |
| **gather_volunteers** | **Boolean** | Attribute used to ask RSVPs if they want to volunteer in the public event form. | [optional] |
| **point_person_id** | **String** | ID of the point person assigned to RSVPs | [optional] |
| **private** | **Boolean** | When true, the event is hidden in the website | [optional] |
| **sends_auto_response** | **Boolean** | Automatically send person RSVPing an email | [optional][default to true] |
| **show_guests** | **Boolean** | Controls where RSVPs are shown on the event page | [optional] |
| **start_at** | **String** | Start time of the event | [optional] |
| **time_zone** | **String** | Time zone the event takes place in | [optional] |
| **user_ticket_currency** | **String** | Currency tickets are purchased in. Used only when selling tickets outside of NationBuilder | [optional] |
| **user_ticket_price_in_cents** | **Integer** | Price in cents of the ticket level. Used only when selling tickets outside of NationBuilder | [optional] |
| **user_ticket_purchase_url** | **String** | URL to third-party seller where tickets are being sold. Used only when selling tickets outside of NationBuilder | [optional] |
| **uses_shifts** | **Boolean** | Flag controlling whether RSVPs will be asked to sign up for shifts during the event. | [optional] |
| **uses_tickets** | **Boolean** | Flag controller whether tickets will be sold to people RSVPing to the event | [optional] |
| **venue_name** | **String** | Name of the venue | [optional] |
| **page_id** | **String** | ID of the page associated with the event | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventResponseDataAttributes.new(
  accept_rsvps: false,
  additional_rsvps_count: 20,
  allow_guests: false,
  attending_count: 100,
  auto_response_broadcaster_id: 1,
  auto_response_content: Content of autoresponse,
  auto_response_subject: Subject of autoresponse,
  capacity_count: 200,
  contact_email: jdoe@work.com,
  contact_email_private: false,
  contact_name: John Doe,
  contact_phone_number: 5555555555,
  contact_phone_private: false,
  content: Event description,
  donation_tracking_code_id: 1,
  duration: 3600,
  event_form_address: required,
  event_form_phone: required,
  gather_volunteers: false,
  point_person_id: 1,
  private: false,
  sends_auto_response: false,
  show_guests: false,
  start_at: 2019-10-26T10:00:00-04:00,
  time_zone: Eastern Time (US &amp; Canada),
  user_ticket_currency: USD,
  user_ticket_price_in_cents: 400,
  user_ticket_purchase_url: https://www.example.com,
  uses_shifts: false,
  uses_tickets: false,
  venue_name: Event Center,
  page_id: 1
)
```

