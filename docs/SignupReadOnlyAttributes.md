# NationbuilderClient::SignupReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email1_is_bouncing** | **Boolean** | Email marked as bounced | [optional] |
| **email2_is_bouncing** | **Boolean** | Email marked as bounced | [optional] |
| **email3_is_bouncing** | **Boolean** | Email marked as bounced | [optional] |
| **email4_is_bouncing** | **Boolean** | Email marked as bounced | [optional] |
| **full_name** | **String** | Signup&#39;s full name. | [optional] |
| **is_cpu** | **Boolean** | Is the signup a control panel user | [optional] |
| **is_donor** | **Boolean** | The signup is a donor. | [optional] |
| **note_updated_at** | **String** | Last time the note was updated. | [optional] |
| **priority_level_changed_at** | **String** | The last time the priority level changed. | [optional] |
| **profile_content_html** | **String** | HTML formatted version of the signup&#39;s profile contents. | [optional] |
| **support_level_changed_at** | **String** | When the signups support level changed. | [optional] |
| **updated_at** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupReadOnlyAttributes.new(
  email1_is_bouncing: false,
  email2_is_bouncing: false,
  email3_is_bouncing: false,
  email4_is_bouncing: false,
  full_name: Lucy Octavia Butler,
  is_cpu: false,
  is_donor: false,
  note_updated_at: 2019-10-26T10:00:00-04:00,
  priority_level_changed_at: 2019-10-26T10:00:00-04:00,
  profile_content_html: &lt;h1&gt;My Profile&lt;/h1&gt;,
  support_level_changed_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00,
  created_at: 2019-10-26T10:00:00-04:00
)
```

