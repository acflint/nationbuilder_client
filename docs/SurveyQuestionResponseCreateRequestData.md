# NationbuilderClient::SurveyQuestionResponseCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionResponseReadWriteAttributes**](SurveyQuestionResponseReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionResponseCreateRequestData.new(
  type: survey_question_responses,
  attributes: null
)
```

