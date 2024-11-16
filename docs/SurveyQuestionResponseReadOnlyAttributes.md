# NationbuilderClient::SurveyQuestionResponseReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **page_id** | **String** | The page the survey belongs to, if any | [optional] |
| **is_skipped** | **Boolean** |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyQuestionResponseReadOnlyAttributes.new(
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00,
  page_id: 1,
  is_skipped: false
)
```

