# NationbuilderClient::SiteReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the site. | [optional] |
| **slug** | **String** | Unique identifier included in the url. | [optional] |
| **domain** | **String** | Custom domain the site is pointing to. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SiteReadOnlyAttributes.new(
  name: My Website,
  slug: example-slug,
  domain: example-site.com
)
```

