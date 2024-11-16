# NationbuilderClient::MailingReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | A unique identifier. | [optional] |
| **description** | **String** | An internal description of the email. | [optional] |
| **subject** | **String** | The email&#39;s subject line. | [optional] |
| **from** | **String** | The from line in an email. | [optional] |
| **published_at** | **String** | When the mailing was published. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **queued_at** | **String** | When the mailing was queued to send. | [optional] |
| **tag_list** | **String** | Comma separated list of tags used as the source of recipients for the mailing. | [optional] |
| **custom_list_id** | **String** | The list used as the source of recipients for the mailing. | [optional] |
| **send_at** | **String** | When the mailing is scheduled to be sent. | [optional] |
| **canceled_at** | **String** | When the mailing was canceled. | [optional] |
| **name** | **String** | The name of the email blast | [optional] |
| **preheader** | **String** | Preheader text that is displayed in an email cient&#39;s inbox | [optional] |
| **broadcaster_id** | **String** | The broadcaster that created the mailing. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MailingReadOnlyAttributes.new(
  slug: acme,
  description: Welcome EMail,
  subject: Welcome to our community,
  from: Broadcaster Name,
  published_at: 2019-10-26T10:00:00-04:00,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00,
  queued_at: 2019-10-26T10:00:00-04:00,
  tag_list: new-signups,
  custom_list_id: 1,
  send_at: 2019-10-26T10:00:00-04:00,
  canceled_at: 2019-10-26T10:00:00-04:00,
  name: Welcome Email,
  preheader: You signed up!,
  broadcaster_id: 1
)
```

