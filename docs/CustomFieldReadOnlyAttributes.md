# NationbuilderClient::CustomFieldReadOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_type** | **String** | The field type. | [optional] |
| **name** | **String** | The name of the field. | [optional] |
| **resource_type** | **String** | The resource the field belongs to. Can be &#39;Signup&#39; or &#39;Donation&#39; | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **slug** | **String** | A unique identifier for the field. | [optional] |
| **options** | **Object** | Multiple choice options. | [optional] |
| **position** | **Integer** | The position in order of custom fields on the assigned model. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::CustomFieldReadOnlyAttributes.new(
  field_type: multiple_choice,
  name: My Custom Field,
  resource_type: Signup,
  created_at: 2019-10-26T10:00:00-04:00,
  updated_at: 2019-10-26T10:00:00-04:00,
  slug: my_custom_field,
  options: {&quot;1&quot;:&quot;option1&quot;,&quot;2&quot;:&quot;option2&quot;,&quot;3&quot;:&quot;option3&quot;},
  position: 2
)
```

