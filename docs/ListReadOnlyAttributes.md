# NationbuilderClient::ListReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signups_count** | **Integer** | The number of signups on the list. | [optional] |
| **created_at** | **String** | When the list was created. | [optional] |
| **updated_at** | **String** | The last time the list was updated. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ListReadOnlyAttributes.new(
  signups_count: 372,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

