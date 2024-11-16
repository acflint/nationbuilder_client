# NationbuilderClient::SurveyQuestionPossibleResponseUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionPossibleResponseReadWriteAttributes**](SurveyQuestionPossibleResponseReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionPossibleResponseUpdateRequestData.new(
  id: 1,
  type: survey_question_possible_responses,
  attributes: null
)
```

