# NationbuilderClient::PageResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**EventShowResponseWithRequiredSidepostIncludedInnerAttributes**](EventShowResponseWithRequiredSidepostIncludedInnerAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PageResponseData.new(
  id: 1,
  type: pages,
  attributes: null
)
```

