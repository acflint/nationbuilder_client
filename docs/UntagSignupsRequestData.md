# NationbuilderClient::UntagSignupsRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the custom list. |  |
| **type** | **String** | Resource type. Must always be lists. |  |
| **tag** | **String** | Tag to remove from signups |  |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::UntagSignupsRequestData.new(
  id: 1,
  type: lists,
  tag: supporter
)
```

