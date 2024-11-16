# NationbuilderClient::SurveyQuestionUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyQuestionReadWriteAttributes**](SurveyQuestionReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionUpdateRequestData.new(
  id: 1,
  type: survey_questions,
  attributes: null
)
```

