# NationbuilderClient::CustomFieldIndexResponseLinksLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to current page | [optional] |
| **prev** | **String** | Link to previous page | [optional] |
| **_next** | **String** | Link to current page | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::CustomFieldIndexResponseLinksLinks.new(
  _self: https://nation_domain.com/api/v2/custom_fields?page[number]&#x3D;2,
  prev: https://nation_domain.com/api/v2/custom_fields?page[number]&#x3D;1,
  _next: https://nation_domain.com/api/v2/custom_fields?page[number]&#x3D;3
)
```

