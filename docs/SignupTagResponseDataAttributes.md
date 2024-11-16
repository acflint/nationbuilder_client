# NationbuilderClient::SignupTagResponseDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Must be a unique, case-insensitive string | [optional][default to &#39;&#39;] |
| **imported** | **Boolean** | The tag was created from an import. | [optional] |
| **shared_with_nations** | **Boolean** | This tag is shared with other nations. | [optional] |
| **from_sharing_nation** | **Boolean** | This tag was shared from another nation. | [optional] |
| **taggings_count** | **Integer** | The number of signup taggings associated with this tag. | [optional][default to 0] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTagResponseDataAttributes.new(
  name: tag_name,
  imported: false,
  shared_with_nations: false,
  from_sharing_nation: false,
  taggings_count: 0
)
```

