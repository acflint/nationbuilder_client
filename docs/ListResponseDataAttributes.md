# NationbuilderClient::ListResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the custom list. | [optional] |
| **signup_id** | **String** | The person who this list is assigned to, not the author. | [optional] |
| **slug** | **String** | A unique identifier for the list. Not required for groups. | [optional] |
| **author_id** | **String** | The ID of the list&#39;s author. | [optional] |
| **is_sharing_writable** | **Boolean** | Gives edit permission to people who the list is shared. | [optional][default to false] |
| **parent_id** | **String** | The id of the original list this was split off from. | [optional] |
| **description** | **String** | Describes what the list is for. | [optional] |
| **signups_count** | **Integer** | The number of signups on the list. | [optional] |
| **created_at** | **String** | When the list was created. | [optional] |
| **updated_at** | **String** | The last time the list was updated. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ListResponseDataAttributes.new(
  name: Contacted Supporters,
  signup_id: 1,
  slug: contacted_supporters,
  author_id: 1,
  is_sharing_writable: false,
  parent_id: 1,
  description: All supporters that have been contacted by us,
  signups_count: 372,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

