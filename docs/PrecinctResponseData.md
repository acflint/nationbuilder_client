# NationbuilderClient::PrecinctResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**PrecinctReadWriteAttributes**](PrecinctReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PrecinctResponseData.new(
  id: 1,
  type: precincts,
  attributes: null
)
```

