# NationbuilderClient::PetitionSignatureReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **petition_id** | **String** | The petition this signature belongs to. | [optional] |
| **recruiter_id** | **String** | The recruiter of this signature. | [optional] |
| **signup_id** | **String** | The signup is the person that signed the petition. | [optional] |
| **is_private** | **Boolean** | Private signatures are not published on the website. | [optional][default to false] |
| **comment** | **String** | Comment left by the signup displayed with their signature on the site. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionSignatureReadWriteAttributes.new(
  petition_id: 1,
  recruiter_id: 1,
  signup_id: 1,
  is_private: false,
  comment: I agree
)
```

