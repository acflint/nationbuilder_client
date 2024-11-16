# NationbuilderClient::PathJourneyCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**PathJourneyReadWriteAttributes**](PathJourneyReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyCreateRequestData.new(
  type: path_journeys,
  attributes: null
)
```

