# NationbuilderClient::BallotCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**BallotReadWriteAttributes**](BallotReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::BallotCreateRequestData.new(
  type: ballots,
  attributes: null
)
```

