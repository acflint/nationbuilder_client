# NationbuilderClient::SignupTagReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **imported** | **Boolean** | The tag was created from an import. | [optional] |
| **shared_with_nations** | **Boolean** | This tag is shared with other nations. | [optional] |
| **from_sharing_nation** | **Boolean** | This tag was shared from another nation. | [optional] |
| **taggings_count** | **Integer** | The number of signup taggings associated with this tag. | [optional][default to 0] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupTagReadOnlyAttributes.new(
  imported: false,
  shared_with_nations: false,
  from_sharing_nation: false,
  taggings_count: 0
)
```

