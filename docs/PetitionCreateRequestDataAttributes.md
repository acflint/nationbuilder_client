# NationbuilderClient::PetitionCreateRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intro** | **String** | The intro is rendered on the petition page above the content. | [optional] |
| **content** | **String** | The content is rendered on the petition page. | [optional] |
| **goal** | **Integer** | The number of signatures you want this petition to receive. | [optional][default to 0] |
| **additional_signatures_count** | **Integer** | Number of offline signatures to add to the signature count total. | [optional][default to 0] |
| **signature_name** | **String** | What you call a signature. | [optional] |
| **is_auto_response** | **Boolean** | Sends an autoresponse to a signup after signing the petition. | [optional][default to true] |
| **auto_response_broadcaster_id** | **String** | The broadcaster that sends the autoresponse. | [optional] |
| **auto_response_subject** | **String** | The subject in the autoresponse email. | [optional] |
| **auto_response_content** | **String** | The content of the autoresponse email. | [optional] |
| **gather_volunteers** | **Boolean** | Ask for signers to volunteer. | [optional] |
| **petition_form_address** | **String** | Require or ask signers to include their address in the signature. | [optional] |
| **petition_form_phone** | **String** | Require or ask signers to include their phone number in the signature. | [optional] |
| **page_id** | **String** | The associated page. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionCreateRequestDataAttributes.new(
  intro: Petition intro,
  content: Petition content,
  goal: 5,
  additional_signatures_count: 10,
  signature_name: endorsement,
  is_auto_response: false,
  auto_response_broadcaster_id: 1,
  auto_response_subject: Auto response subject,
  auto_response_content: Auto response content,
  gather_volunteers: false,
  petition_form_address: required,
  petition_form_phone: optional,
  page_id: 1
)
```

