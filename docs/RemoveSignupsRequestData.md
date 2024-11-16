# NationbuilderClient::RemoveSignupsRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the custom list. |  |
| **type** | **String** | Resource type. Must always be lists. |  |
| **signup_ids** | **Array&lt;Integer&gt;** | IDs of the signups to remove from custom list |  |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::RemoveSignupsRequestData.new(
  id: 1,
  type: lists,
  signup_ids: [&quot;1&quot;,&quot;2&quot;]
)
```

