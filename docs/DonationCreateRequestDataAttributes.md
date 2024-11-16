# NationbuilderClient::DonationCreateRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actblue_order_number** | **String** | The ActBlue order. | [optional] |
| **amount_in_cents** | **Integer** | The order amount in cents. | [optional][default to 0] |
| **canceled_at** | **String** | When the order was canceled. | [optional] |
| **check_number** | **String** | Check number. | [optional] |
| **donation_tracking_code_id** | **String** | The associated donation tracking code. | [optional] |
| **first_name** | **String** | Donor&#39;s first name. | [optional] |
| **middle_name** | **String** | Donor&#39;s middle name. | [optional] |
| **last_name** | **String** | Donor&#39;s last name. | [optional] |
| **is_private** | **Boolean** | Marks the donation as private. | [optional][default to false] |
| **is_corporate_contribution** | **Boolean** | Marks the donation as a corporate donation. | [optional][default to false] |
| **custom_values** | **Object** | Values for nation-defined fields on donation | [optional] |
| **email** | **String** | Donor&#39;s email. | [optional] |
| **employer** | **String** | Donor&#39;s employer. | [optional] |
| **failed_at** | **String** | When the donation failed. | [optional] |
| **mailing_id** | **String** | The mailing associated with this donation. | [optional] |
| **membership_id** | **String** | The membership given from this donation. | [optional] |
| **note** | **String** | Short description. | [optional] |
| **occupation** | **String** | Donor&#39;s occupation. | [optional] |
| **page_id** | **String** | The page associated with this donation. | [optional] |
| **payment_type_id** | **String** | The payment type used. | [optional] |
| **payment_type_name** | **String** | The name of the payment type | [optional] |
| **pledge_id** | **String** | The associated pledge. | [optional] |
| **signup_id** | **String** | The signup that donated. | [optional] |
| **send_donor_receipt** | **Boolean** |  | [optional][default to false] |
| **billing_address_attributes** | **Object** |         Attribute used to write data to the given donation&#39;s Billing address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **work_address_attributes** | **Object** |         Attribute used to write data to the given donation&#39;s Work address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationCreateRequestDataAttributes.new(
  actblue_order_number: 123abc,
  amount_in_cents: 500,
  canceled_at: 2019-10-26T10:00:00-04:00,
  check_number: 1001,
  donation_tracking_code_id: 1,
  first_name: Lucy,
  middle_name: Octavia,
  last_name: Butler,
  is_private: false,
  is_corporate_contribution: false,
  custom_values: {custom_text&#x3D;Text Value, custom_number&#x3D;22, custom_checkbox&#x3D;true, custom_multi&#x3D;Some multiple choice option},
  email: donor@gmail.com,
  employer: Wild Horse Co.,
  failed_at: 2019-10-26T10:00:00-04:00,
  mailing_id: 1,
  membership_id: 1,
  note: Dedicated to Lucy,
  occupation: Postal Carrier,
  page_id: 1,
  payment_type_id: 1,
  payment_type_name: Cash,
  pledge_id: 1,
  signup_id: 1,
  send_donor_receipt: false,
  billing_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555, delete&#x3D;true},
  work_address_attributes: {address1&#x3D;20 W 34th St., address2&#x3D;Suite 100, address3&#x3D;null, city&#x3D;New York, state&#x3D;NY, zip&#x3D;10001, county&#x3D;New York County, country_code&#x3D;US, lat&#x3D;40.7484, lng&#x3D;73.9857, fips&#x3D;04, submitted_address&#x3D;20 W 34th St. Suite 100, New York, NY 10001, distance&#x3D;0, import_id&#x3D;2, work_phone&#x3D;5555555555, phone_number&#x3D;5555555555, phone_country_code&#x3D;1, work_phone_number&#x3D;5555555555, delete&#x3D;true}
)
```

