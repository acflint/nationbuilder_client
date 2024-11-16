# NationbuilderClient::EventShowResponseWithRequiredSidepostIncludedInnerAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** | The site this page belongs to. | [optional] |
| **author_id** | **String** | The author of the page. | [optional] |
| **external_id** | **String** | Optional reference for pages imported from an external service. | [optional] |
| **slug** | **String** | A unique identifier that also makes up the url of the page. www.yoursite.com/[slug] | [optional] |
| **status** | **String** | The page status - describing the visibility of the page. | [optional] |
| **name** | **String** | The name of the page. | [optional] |
| **headline** | **String** | This is a header rendered above the page content. | [optional] |
| **title** | **String** | Brief page description seen on search engines. | [optional] |
| **excerpt** | **String** | Longer page description used for search engine optimization. | [optional] |
| **page_type_name** | **String** | The name of the page type. | [optional] |
| **url_path** | **String** | URL to the page. | [optional] |
| **published_at** | **String** | When this page was published. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::EventShowResponseWithRequiredSidepostIncludedInnerAttributes.new(
  site_id: 1,
  author_id: 1,
  external_id: abc,
  slug: your-slug,
  status: unlisted,
  name: Page Name,
  headline: Page headline,
  title: Page Title,
  excerpt: Page excerpt...,
  page_type_name: Basic,
  url_path: /your-slug,
  published_at: 2019-10-26T10:00:00-04:00
)
```

