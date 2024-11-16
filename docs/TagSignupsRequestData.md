# NationbuilderClient::TagSignupsRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the custom list. |  |
| **type** | **String** | Resource type. Must always be lists. |  |
| **tag** | **String** | Tag name used to tag signups |  |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::TagSignupsRequestData.new(
  id: 1,
  type: lists,
  tag: supporter
)
```

