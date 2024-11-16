# NationbuilderClient::SurveyQuestionCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionReadWriteAttributes**](SurveyQuestionReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionCreateRequestData.new(
  type: survey_questions,
  attributes: null
)
```

