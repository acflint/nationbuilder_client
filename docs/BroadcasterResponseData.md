# NationbuilderClient::BroadcasterResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**BroadcasterReadOnlyAttributes**](BroadcasterReadOnlyAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::BroadcasterResponseData.new(
  id: 1,
  type: broadcasters,
  attributes: null
)
```

