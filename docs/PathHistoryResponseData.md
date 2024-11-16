# NationbuilderClient::PathHistoryResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PathHistoryReadOnlyAttributes**](PathHistoryReadOnlyAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathHistoryResponseData.new(
  id: 1,
  type: path_histories,
  attributes: null
)
```

