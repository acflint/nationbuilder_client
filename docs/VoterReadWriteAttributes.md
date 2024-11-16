# NationbuilderClient::VoterReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_absentee_voter** | **Boolean** | The voter voted via absentee ballot. | [optional][default to false] |
| **is_active_voter** | **Boolean** | The voter actively votes. | [optional][default to false] |
| **is_dropped_from_file** | **Boolean** | When true this indicates the voter was in the file during the last refresh. | [optional][default to false] |
| **is_early_voter** | **Boolean** | Voter votes before the election date. | [optional][default to false] |
| **is_permanent_absentee_voter** | **Boolean** | Voter permanently votes via absentee ballot. | [optional][default to false] |
| **signup_id** | **String** | The voter resource&#39;s associated Signup ID | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::VoterReadWriteAttributes.new(
  is_absentee_voter: false,
  is_active_voter: false,
  is_dropped_from_file: false,
  is_early_voter: false,
  is_permanent_absentee_voter: false,
  signup_id: 1
)
```

