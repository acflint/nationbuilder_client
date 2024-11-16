# NationbuilderClient::EventRsvpCreateRequestDataAttributes

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
| **phone_number** | **String** | The attendee&#39;s phone number | [optional] |
| **billing_address_attributes** | **Object** |         Attribute used to write data to the given event_rsvp&#39;s Billing address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **mailing_address_attributes** | **Object** |         Attribute used to write data to the given event_rsvp&#39;s Mailing address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **home_address_attributes** | **Object** |         Attribute used to write data to the given event_rsvp&#39;s Home address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **registered_address_attributes** | **Object** |         Attribute used to write data to the given event_rsvp&#39;s Registered address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **user_submitted_address_attributes** | **Object** |         Attribute used to write data to the given event_rsvp&#39;s User submitted address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **work_address_attributes** | **Object** |         Attribute used to write data to the given event_rsvp&#39;s Work address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventRsvpCreateRequestDataAttributes.new(
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
  phone_number: 5555555555,
  billing_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555},
  mailing_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555},
  home_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555},
  registered_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555},
  user_submitted_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555},
  work_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555}
)
```

