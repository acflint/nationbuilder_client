# NationbuilderClient::BallotReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cast_at** | **String** | When the ballot was cast. | [optional] |
| **election_id** | **String** | The election associated with this ballot. | [optional] |
| **party** | **String** | Political party. | [optional] |
| **vote_method** | **String** | One word description of the vote method. | [optional] |
| **voter_id** | **String** | The voter belonging to the ballot. | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::BallotReadWriteAttributes.new(
  cast_at: 2022-03-25,
  election_id: 1,
  party: green,
  vote_method: absentee,
  voter_id: 1
)
```

