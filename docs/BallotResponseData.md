# NationbuilderClient::BallotResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**BallotReadWriteAttributes**](BallotReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::BallotResponseData.new(
  id: 1,
  type: ballots,
  attributes: null
)
```

