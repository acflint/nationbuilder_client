# NationbuilderClient::DonationWriteOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_donor_receipt** | **Boolean** |  | [optional][default to false] |
| **billing_address_attributes** | **Object** |         Attribute used to write data to the given donation&#39;s Billing address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |
| **work_address_attributes** | **Object** |         Attribute used to write data to the given donation&#39;s Work address.         When an address already exists, provided values will be used to patch the existing address data,         only overwriting values provided in the payload.         When no address exists, the existing data will be used to persist a new address.  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::DonationWriteOnlyAttributes.new(
  send_donor_receipt: false,
  billing_address_attributes: {&quot;address1&quot;:&quot;20 W 34th St.&quot;,&quot;address2&quot;:&quot;Suite 100&quot;,&quot;address3&quot;:null,&quot;city&quot;:&quot;New York&quot;,&quot;state&quot;:&quot;NY&quot;,&quot;zip&quot;:&quot;10001&quot;,&quot;county&quot;:&quot;New York County&quot;,&quot;country_code&quot;:&quot;US&quot;,&quot;lat&quot;:&quot;40.7484&quot;,&quot;lng&quot;:&quot;73.9857&quot;,&quot;fips&quot;:&quot;04&quot;,&quot;submitted_address&quot;:&quot;20 W 34th St. Suite 100, New York, NY 10001&quot;,&quot;distance&quot;:0,&quot;import_id&quot;:&quot;2&quot;,&quot;work_phone&quot;:&quot;5555555555&quot;,&quot;phone_number&quot;:&quot;5555555555&quot;,&quot;phone_country_code&quot;:&quot;1&quot;,&quot;work_phone_number&quot;:&quot;5555555555&quot;,&quot;delete&quot;:true},
  work_address_attributes: {&quot;address1&quot;:&quot;20 W 34th St.&quot;,&quot;address2&quot;:&quot;Suite 100&quot;,&quot;address3&quot;:null,&quot;city&quot;:&quot;New York&quot;,&quot;state&quot;:&quot;NY&quot;,&quot;zip&quot;:&quot;10001&quot;,&quot;county&quot;:&quot;New York County&quot;,&quot;country_code&quot;:&quot;US&quot;,&quot;lat&quot;:&quot;40.7484&quot;,&quot;lng&quot;:&quot;73.9857&quot;,&quot;fips&quot;:&quot;04&quot;,&quot;submitted_address&quot;:&quot;20 W 34th St. Suite 100, New York, NY 10001&quot;,&quot;distance&quot;:0,&quot;import_id&quot;:&quot;2&quot;,&quot;work_phone&quot;:&quot;5555555555&quot;,&quot;phone_number&quot;:&quot;5555555555&quot;,&quot;phone_country_code&quot;:&quot;1&quot;,&quot;work_phone_number&quot;:&quot;5555555555&quot;,&quot;delete&quot;:true}
)
```

