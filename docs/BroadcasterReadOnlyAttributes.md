# NationbuilderClient::BroadcasterReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the broadcaster. | [optional] |
| **email** | **String** | The broadcaster&#39;s email address. | [optional] |
| **mailings_count** | **Integer** | The number of email blasts created by the broadcaster. | [optional][default to 0] |
| **text_blasts_count** | **Integer** | The number of text blasts created by the broadcaster. | [optional][default to 0] |
| **received_calls_count** | **Integer** | The number of calls received. | [optional][default to 0] |
| **is_bcc** | **Boolean** | Enable BCC for this broadcaster. | [optional][default to false] |
| **receive_email** | **Boolean** | Allow the broadcaster to receive emails. | [optional][default to false] |
| **point_person_id** | **String** | The point person for the broadcaster. | [optional] |
| **emailers_need_followup** | **Boolean** | Mark interactions with the broadcaster as needing followup. | [optional][default to false] |
| **emailer_tags** | **String** | Add these tags to signups that interact with this broadcaster. (comma separated list) | [optional] |
| **signup_id** | **String** | Signup that belongs to the broadcaster. | [optional] |
| **call_type_id** | **String** | The call type that belongs to the broadcaster. | [optional] |
| **voicemail_needs_followup** | **Boolean** | Mark voicemails received by the broadcaster as needing followup. | [optional] |
| **voicemail_point_person_id** | **String** | The point person responsible for voicemails. | [optional] |
| **voicemail_tags** | **String** | Tag signups that leave voicemails with these tags. (comma separated list) | [optional] |
| **text_needs_followup** | **Boolean** | Mark text received by the broadcaster as needing followup. | [optional] |
| **text_point_person_id** | **String** | The point person responsible for texts. | [optional] |
| **text_tags** | **String** | Tag signups that interact with the broadcaster via text with these tags. (comma separated list) | [optional] |
| **new_email_sender_marked_as_prospect** | **Boolean** | Signups that email this broadcaster for the first time are marked as a prospect. | [optional][default to false] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::BroadcasterReadOnlyAttributes.new(
  name: Lucy Butler,
  email: test@example.com,
  mailings_count: 0,
  text_blasts_count: 0,
  received_calls_count: 0,
  is_bcc: false,
  receive_email: true,
  point_person_id: 1,
  emailers_need_followup: true,
  emailer_tags: interested,
  signup_id: 1,
  call_type_id: 1,
  voicemail_needs_followup: true,
  voicemail_point_person_id: 1,
  voicemail_tags: voicemail-tagged,
  text_needs_followup: true,
  text_point_person_id: 1,
  text_tags: text-tagged,
  new_email_sender_marked_as_prospect: true,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

