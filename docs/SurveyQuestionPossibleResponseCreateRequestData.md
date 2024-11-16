# NationbuilderClient::SurveyQuestionPossibleResponseCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionPossibleResponseReadWriteAttributes**](SurveyQuestionPossibleResponseReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionPossibleResponseCreateRequestData.new(
  type: survey_question_possible_responses,
  attributes: null
)
```

