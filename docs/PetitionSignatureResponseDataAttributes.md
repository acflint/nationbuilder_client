# NationbuilderClient::PetitionSignatureResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **petition_id** | **String** | The petition this signature belongs to. | [optional] |
| **recruiter_id** | **String** | The recruiter of this signature. | [optional] |
| **signup_id** | **String** | The signup is the person that signed the petition. | [optional] |
| **is_private** | **Boolean** | Private signatures are not published on the website. | [optional][default to false] |
| **comment** | **String** | Comment left by the signup displayed with their signature on the site. | [optional] |
| **page_id** | **String** | The associated page. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionSignatureResponseDataAttributes.new(
  petition_id: 1,
  recruiter_id: 1,
  signup_id: 1,
  is_private: false,
  comment: I agree,
  page_id: 1,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

