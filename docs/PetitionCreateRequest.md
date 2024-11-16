# NationbuilderClient::PetitionCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**PetitionCreateRequestData**](PetitionCreateRequestData.md) |  | [optional] |
| **included** | [**Array&lt;EventCreateRequestIncludedInner&gt;**](EventCreateRequestIncludedInner.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionCreateRequest.new(
  data: null,
  included: null
)
```

