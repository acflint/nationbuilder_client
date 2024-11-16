# NationbuilderClient::PathJourneyReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ended_at** | **String** | When the path ended. | [optional] |
| **journey_status** | **String** | The current path journey status. | [optional][default to &#39;active&#39;] |
| **last_moved_at** | **String** | The last time the signup moved along the path journey. | [optional] |
| **path_journey_status_change_id** | **String** | The ID of the status change. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathJourneyReadOnlyAttributes.new(
  ended_at: 2019-10-26T10:00:00-04:00,
  journey_status: active,
  last_moved_at: 2019-10-26T10:00:00-04:00,
  path_journey_status_change_id: 1,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00
)
```

