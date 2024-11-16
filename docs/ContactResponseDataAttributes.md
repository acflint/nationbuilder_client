# NationbuilderClient::ContactResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_id** | **String** | The contact&#39;s author. | [optional] |
| **signup_id** | **String** | The contact&#39;s signup. | [optional] |
| **contact_status** | **String** | The status. | [optional] |
| **contact_method** | **String** | The contact method. | [optional] |
| **broadcaster_id** | **String** | The broadcaster of the contact. | [optional] |
| **content** | **String** | The content of the contact. | [optional] |
| **pc_in_cents** | **Integer** | Political capital awarded in this contact. | [optional][default to 0] |
| **path_id** | **String** | The path belonging to this contact. | [optional] |
| **path_step_id** | **String** | The path step belonging to this contact. | [optional] |
| **created_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ContactResponseDataAttributes.new(
  author_id: 1,
  signup_id: 1,
  contact_status: answered,
  contact_method: email,
  broadcaster_id: 1,
  content: They do not support the cause,
  pc_in_cents: 1,
  path_id: 1,
  path_step_id: 1,
  created_at: 2019-10-26T10:00:00-04:00
)
```

