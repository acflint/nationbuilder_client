# NationbuilderClient::SurveyQuestionReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | Unique identifier for the survey question. Has a maximum length of 20 characters. | [optional] |
| **content** | **String** | The question being asked. | [optional] |
| **intro** | **String** | Short description of the question. | [optional] |
| **tag_list** | **String** | Tags to add to the signup after answering the question. | [optional] |
| **is_randomized** | **Boolean** | Displays responses in random order. | [optional][default to true] |
| **survey_id** | **String** | The survey this question belongs to. | [optional] |
| **status** | **String** |  | [optional] |
| **question_format** | **String** | The format of this question. | [optional][default to &#39;multiple_choice&#39;] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionReadWriteAttributes.new(
  slug: question_about_food,
  content: What is your favorite food?,
  intro: Please answer some questions about your favorite foods,
  tag_list: comma,separated,tag-list,
  is_randomized: false,
  survey_id: 1,
  status: published,
  question_format: multiple_choice
)
```

