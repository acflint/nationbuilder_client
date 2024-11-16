# NationbuilderClient::SurveyQuestionResponseResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionResponseResponseDataAttributes**](SurveyQuestionResponseResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionResponseResponseData.new(
  id: 1,
  type: survey_question_responses,
  attributes: null
)
```

