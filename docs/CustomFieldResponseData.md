# NationbuilderClient::CustomFieldResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**CustomFieldReadOnlyAttributes**](CustomFieldReadOnlyAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::CustomFieldResponseData.new(
  id: 1,
  type: custom_fields,
  attributes: null
)
```

