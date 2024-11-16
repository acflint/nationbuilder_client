# NationbuilderClient::SurveyQuestionResponseUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionResponseReadWriteAttributes**](SurveyQuestionResponseReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionResponseUpdateRequestData.new(
  id: 1,
  type: survey_question_responses,
  attributes: null
)
```

