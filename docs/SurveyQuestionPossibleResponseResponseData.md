# NationbuilderClient::SurveyQuestionPossibleResponseResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionPossibleResponseResponseDataAttributes**](SurveyQuestionPossibleResponseResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionPossibleResponseResponseData.new(
  id: 1,
  type: survey_question_possible_responses,
  attributes: null
)
```

