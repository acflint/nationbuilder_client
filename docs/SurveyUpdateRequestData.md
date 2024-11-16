# NationbuilderClient::SurveyUpdateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyReadWriteAttributes**](SurveyReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyUpdateRequestData.new(
  id: 1,
  type: surveys,
  attributes: null
)
```

