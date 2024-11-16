# NationbuilderClient::SiteResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **attributes** | [**SiteReadOnlyAttributes**](SiteReadOnlyAttributes.md) |  | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SiteResponseData.new(
  id: 1,
  type: sites,
  attributes: null
)
```

