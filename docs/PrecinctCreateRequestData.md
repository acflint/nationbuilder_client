# NationbuilderClient::PrecinctCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PrecinctReadWriteAttributes**](PrecinctReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PrecinctCreateRequestData.new(
  type: precincts,
  attributes: null
)
```

