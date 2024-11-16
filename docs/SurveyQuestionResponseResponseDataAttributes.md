# NationbuilderClient::SurveyQuestionResponseResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **survey_question_id** | **String** | The survey question this response belongs to. | [optional] |
| **survey_question_possible_response_id** | **String** | The response chosen by the signup. | [optional] |
| **signup_id** | **String** | The signup that answered the survey. | [optional] |
| **author_id** | **String** | The author of this response. | [optional] |
| **content** | **String** | The response to a text question. | [optional] |
| **question_format** | **String** | The format of the question. | [optional][default to &#39;multiple_choice&#39;] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **page_id** | **String** | The page the survey belongs to, if any | [optional] |
| **is_skipped** | **Boolean** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionResponseResponseDataAttributes.new(
  survey_question_id: 1,
  survey_question_possible_response_id: 1,
  signup_id: 1,
  author_id: 1,
  content: Open ended question answer,
  question_format: multiple_choice,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00,
  page_id: 1,
  is_skipped: false
)
```

