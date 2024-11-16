# NationbuilderClient::SurveyQuestionResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionResponseDataAttributes**](SurveyQuestionResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionResponseData.new(
  id: 1,
  type: survey_questions,
  attributes: null
)
```

