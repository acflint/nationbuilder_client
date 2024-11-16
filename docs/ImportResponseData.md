# NationbuilderClient::ImportResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**ImportReadOnlyAttributes**](ImportReadOnlyAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::ImportResponseData.new(
  id: 1,
  type: imports,
  attributes: null
)
```

