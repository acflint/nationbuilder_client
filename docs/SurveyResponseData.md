# NationbuilderClient::SurveyResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SurveyResponseDataAttributes**](SurveyResponseDataAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SurveyResponseData.new(
  id: 1,
  type: surveys,
  attributes: null
)
```

