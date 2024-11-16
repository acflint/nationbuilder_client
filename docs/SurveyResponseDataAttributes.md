# NationbuilderClient::SurveyResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the survey. | [optional] |
| **updated_at** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyResponseDataAttributes.new(
  name: Survey Name,
  updated_at: 2019-10-26T10:00:00-04:00,
  created_at: 2019-10-26T10:00:00-04:00
)
```

