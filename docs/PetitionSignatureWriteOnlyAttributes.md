# NationbuilderClient::PetitionSignatureWriteOnlyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trigger_autoresponses** | **Boolean** | Whether the creation of this petition signature should result in an autoresponse being sent to the signer. Defaults to false. | [optional][default to false] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PetitionSignatureWriteOnlyAttributes.new(
  trigger_autoresponses: false
)
```

