# NationbuilderClient::SurveyQuestionReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **published_at** | **String** | When the question was published. | [optional] |
| **position** | **Integer** | The position this question appears in the list of survey questions. | [optional][default to 0] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionReadOnlyAttributes.new(
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00,
  published_at: 2019-10-26T10:00:00-04:00,
  position: 0
)
```

