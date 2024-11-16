# NationbuilderClient::EventCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**EventCreateRequestData**](EventCreateRequestData.md) |  | [optional] |
| **included** | [**Array&lt;EventCreateRequestIncludedInner&gt;**](EventCreateRequestIncludedInner.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventCreateRequest.new(
  data: null,
  included: null
)
```

