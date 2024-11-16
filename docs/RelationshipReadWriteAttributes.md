# NationbuilderClient::RelationshipReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_signup_id** | **String** | The first signup listed in the relationship. | [optional] |
| **second_signup_id** | **String** | The second signup listed in the relationship. | [optional] |
| **relationship_type** | **String** | Describes the relationship as first_signup-second_signup. | [optional] |
| **title** | **String** | Optional description to provide to the relationship. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::RelationshipReadWriteAttributes.new(
  first_signup_id: 1,
  second_signup_id: 2,
  relationship_type: member-organization,
  title: Executive Assistant
)
```

