# NationbuilderClient::DonationReadWriteAttributes

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

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationReadWriteAttributes.new(
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
  signup_id: 1
)
```

