# NationbuilderClient::MailingResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**MailingReadOnlyAttributes**](MailingReadOnlyAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::MailingResponseData.new(
  id: 1,
  type: mailings,
  attributes: null
)
```

