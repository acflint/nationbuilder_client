# NationbuilderClient::SurveyCreateRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **attributes** | [**SurveyReadWriteAttributes**](SurveyReadWriteAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyCreateRequestData.new(
  type: surveys,
  attributes: null
)
```

