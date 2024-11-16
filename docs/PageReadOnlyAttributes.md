# NationbuilderClient::PageReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url_path** | **String** | URL to the page. | [optional] |
| **published_at** | **String** | When this page was published. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PageReadOnlyAttributes.new(
  url_path: /your-slug,
  published_at: 2019-10-26T10:00:00-04:00
)
```

