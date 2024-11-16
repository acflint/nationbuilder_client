# NationbuilderClient::EventShowResponseWithRequiredSidepostIncludedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **attributes** | [**EventShowResponseWithRequiredSidepostIncludedInnerAttributes**](EventShowResponseWithRequiredSidepostIncludedInnerAttributes.md) |  | [optional] |
| **temp_id** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventShowResponseWithRequiredSidepostIncludedInner.new(
  type: pages,
  id: 1,
  attributes: null,
  temp_id: new-id
)
```

