# NationbuilderClient::DonationUpdateRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
| **billing_address_attributes** | **Object** |         Attribute used to write data to the given donation&#39;s Billing address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **work_address_attributes** | **Object** |         Attribute used to write data to the given donation&#39;s Work address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationUpdateRequestDataAttributes.new(
  amount_in_cents: 500,
  canceled_at: 2019-10-26T10:00:00-04:00,
  check_number: 1001,
  donation_tracking_code_id: 1,
  first_name: Lucy,
  middle_name: Octavia,
  last_name: Butler,
  is_private: false,
  is_corporate_contribution: false,
  custom_values: {&quot;custom_text&quot;:&quot;Text Value&quot;,&quot;custom_number&quot;:&quot;22&quot;,&quot;custom_checkbox&quot;:true,&quot;custom_multi&quot;:&quot;Some multiple choice option&quot;},
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
  billing_address_attributes: {&quot;address1&quot;:&quot;20 W 34th St.&quot;,&quot;address2&quot;:&quot;Suite 100&quot;,&quot;address3&quot;:null,&quot;city&quot;:&quot;New York&quot;,&quot;state&quot;:&quot;NY&quot;,&quot;zip&quot;:&quot;10001&quot;,&quot;county&quot;:&quot;New York County&quot;,&quot;country_code&quot;:&quot;US&quot;,&quot;lat&quot;:&quot;40.7484&quot;,&quot;lng&quot;:&quot;73.9857&quot;,&quot;fips&quot;:&quot;04&quot;,&quot;submitted_address&quot;:&quot;20 W 34th St. Suite 100, New York, NY 10001&quot;,&quot;distance&quot;:0,&quot;import_id&quot;:&quot;2&quot;,&quot;work_phone&quot;:&quot;5555555555&quot;,&quot;phone_number&quot;:&quot;5555555555&quot;,&quot;phone_country_code&quot;:&quot;1&quot;,&quot;work_phone_number&quot;:&quot;5555555555&quot;,&quot;delete&quot;:true},
  work_address_attributes: {&quot;address1&quot;:&quot;20 W 34th St.&quot;,&quot;address2&quot;:&quot;Suite 100&quot;,&quot;address3&quot;:null,&quot;city&quot;:&quot;New York&quot;,&quot;state&quot;:&quot;NY&quot;,&quot;zip&quot;:&quot;10001&quot;,&quot;county&quot;:&quot;New York County&quot;,&quot;country_code&quot;:&quot;US&quot;,&quot;lat&quot;:&quot;40.7484&quot;,&quot;lng&quot;:&quot;73.9857&quot;,&quot;fips&quot;:&quot;04&quot;,&quot;submitted_address&quot;:&quot;20 W 34th St. Suite 100, New York, NY 10001&quot;,&quot;distance&quot;:0,&quot;import_id&quot;:&quot;2&quot;,&quot;work_phone&quot;:&quot;5555555555&quot;,&quot;phone_number&quot;:&quot;5555555555&quot;,&quot;phone_country_code&quot;:&quot;1&quot;,&quot;work_phone_number&quot;:&quot;5555555555&quot;,&quot;delete&quot;:true}
)
```

