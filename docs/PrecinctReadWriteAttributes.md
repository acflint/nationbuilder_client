# NationbuilderClient::PrecinctReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Precinct code | [optional] |
| **name** | **String** | Name of the precinct. | [optional] |
| **point_person_id** | **String** | The point person for this precinct. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PrecinctReadWriteAttributes.new(
  code: 123,
  name: abc,
  point_person_id: 1
)
```

