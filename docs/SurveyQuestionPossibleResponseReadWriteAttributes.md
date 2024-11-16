# NationbuilderClient::SurveyQuestionPossibleResponseReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **position** | **Integer** | The position this response appears in the list of responses. | [optional] |
| **name** | **String** | The response to the question. | [optional] |
| **outro** | **String** | A message to display after the response is selected. | [optional] |
| **tag_list** | **String** | List of tags to assign the signup after selecting this response. | [optional] |
| **survey_question_id** | **String** | The survey question this response belongs to. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionPossibleResponseReadWriteAttributes.new(
  position: 1,
  name: A possible response to a question,
  outro: In the UI, a message to show after response,
  tag_list: comma,separated,tag,list,
  survey_question_id: 1
)
```

